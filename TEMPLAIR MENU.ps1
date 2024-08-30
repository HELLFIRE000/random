# PowerShell Penetration Testing Menu Script

function Show-Menu {
    cls
    Write-Host "==============================="
    Write-Host "$$$$$$$$BLACK TEMPLAIR$$$$$$$$"
    Write-Host "==============================="
    Write-Host "1. Brute Force Attack Simulation"
    Write-Host "2. Port Scanning"
    Write-Host "3. Directory Brute Forcing"
    Write-Host "4. Vulnerability Scanning"
    Write-Host "5. Exit"
    Write-Host "==============================="
}

function Brute-Force {
    Write-Host "Brute Force Attack Simulation:"
    $target = Read-Host "Enter target username"
    $passwords = @("1234", "password", "admin", "letmein", "123456")
    
    foreach ($password in $passwords) {
        Write-Host "Trying password: $password"
        Start-Sleep -Seconds 1
        # Simulate a password check (replace with actual check)
        if ($password -eq "password") {
            Write-Host "Success! Password for $target is $password"
            return
        }
    }
    Write-Host "Brute force attack failed. No matching password found."
}

function Port-Scan {
    Write-Host "Port Scanning:"
    $host = Read-Host "Enter target IP or hostname"
    $ports = 1..1024
    
    foreach ($port in $ports) {
        $result = Test-NetConnection -ComputerName $host -Port $port
        if ($result.TcpTestSucceeded) {
            Write-Host "Port $port is open."
        }
    }
}

function Directory-Brute-Force {
    Write-Host "Directory Brute Forcing:"
    $host = Read-Host "Enter target URL (e.g., http://example.com)"
    $wordlist = @("admin", "login", "dashboard", "files", "data")
    
    foreach ($dir in $wordlist) {
        $url = "$host/$dir"
        Write-Host "Testing URL: $url"
        $response = Invoke-WebRequest -Uri $url -Method Head -ErrorAction SilentlyContinue
        if ($response.StatusCode -eq 200) {
            Write-Host "Directory found: $url"
        }
    }
}

function Vulnerability-Scan {
    Write-Host "Vulnerability Scanning:"
    $host = Read-Host "Enter target IP or hostname"
    Write-Host "Simulated scan for $host"
    Start-Sleep -Seconds 2
    Write-Host "Vulnerability scan complete. No real vulnerabilities detected (simulation)."
}

function Exit-Script {
    Write-Host "Are you sure you want to exit? (Y/N)"
    $confirm = Read-Host
    if ($confirm -eq 'Y') {
        exit
    }
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Choose an option (1-5)"
    
    switch ($choice) {
        '1' { Brute-Force }
        '2' { Port-Scan }
        '3' { Directory-Brute-Force }
        '4' { Vulnerability-Scan }
        '5' { Exit-Script }
        default { Write-Host "Invalid choice. Please choose between 1 and 5." }
    }
}
