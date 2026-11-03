$port = 8080
$folder = if (Test-Path "$PSScriptRoot\index.html") { $PSScriptRoot } else { 'C:\Users\Yarka\.gemini\antigravity\scratch' }

# Pastikan tidak ada proses lama yang memblokir
try {
  $conns = Get-NetTCPConnection -LocalPort $port -ErrorAction SilentlyContinue
  if ($conns) {
    foreach ($c in $conns) {
      if ($c.OwningProcess -gt 4) {
        Stop-Process -Id $c.OwningProcess -Force -ErrorAction SilentlyContinue
      }
    }
    Start-Sleep -Milliseconds 300
  }
} catch {}

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Prefixes.Add("http://127.0.0.1:$port/")

try {
  $listener.Start()
  Write-Host "Server MYA aktif di http://localhost:$port/ dan http://127.0.0.1:$port/"
} catch {
  Write-Host "Catatan: Port $port sudah digunakan oleh layanan lain, membuka browser langsung..."
}

# Buka browser
Start-Process "http://localhost:$port/"

while ($listener.IsListening) {
  try {
    $context = $listener.GetContext()
    $req = $context.Request
    $res = $context.Response
    
    # Tambahkan CORS header agar kompatibel dengan seluruh browser
    $res.Headers.Add("Access-Control-Allow-Origin", "*")
    $res.Headers.Add("Cache-Control", "no-cache, no-store, must-revalidate")
    
    $urlPath = $req.Url.LocalPath.TrimStart('/')
    if ([string]::IsNullOrEmpty($urlPath)) { $urlPath = 'index.html' }
    $urlPath = [System.Uri]::UnescapeDataString($urlPath)
    $filePath = Join-Path $folder $urlPath
    
    if (Test-Path $filePath -PathType Leaf) {
      $bytes = [System.IO.File]::ReadAllBytes($filePath)
      $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
      switch ($ext) {
        '.html' { $res.ContentType = 'text/html; charset=utf-8' }
        '.jpg'  { $res.ContentType = 'image/jpeg' }
        '.jpeg' { $res.ContentType = 'image/jpeg' }
        '.png'  { $res.ContentType = 'image/png' }
        '.webp' { $res.ContentType = 'image/webp' }
        '.css'  { $res.ContentType = 'text/css' }
        '.js'   { $res.ContentType = 'application/javascript' }
        default { $res.ContentType = 'application/octet-stream' }
      }
      $res.ContentLength64 = $bytes.Length
      if ($req.HttpMethod -ne 'HEAD') {
        $res.OutputStream.Write($bytes, 0, $bytes.Length)
      }
    } else {
      $res.StatusCode = 404
      $msg = [System.Text.Encoding]::UTF8.GetBytes("File Not Found: $urlPath")
      $res.ContentLength64 = $msg.Length
      if ($req.HttpMethod -ne 'HEAD') {
        $res.OutputStream.Write($msg, 0, $msg.Length)
      }
    }
    $res.OutputStream.Close()
  } catch {
    try { $res.OutputStream.Close() } catch {}
  }
}
