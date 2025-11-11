# Current directory path
$current_path = Get-Location


# Creating required directories
$directory_name

# Creating build directory
$directory_name = "build"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}

# Creating bin directory
$directory_name = "bin"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}

# Creating include directory
$directory_name = "include"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}

# Creating lib directory
$directory_name = "lib"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}

# Creating res directory
$directory_name = "res"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}

# Creating scripts directory
$directory_name = "scripts"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}

# Creating src directory
$directory_name = "src"
if(-not(Test-Path -Path "$current_path\$directory_name")){
    $null = New-Item -Path "$current_path\$directory_name" -ItemType Directory
}


# Creating git repo
git init