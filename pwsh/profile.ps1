$env:PATH='/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin'
$env:PAGER='less'
$env:LESS='-XR'

function Prompt
{
    $(if (test-path variable:/PSDebugContext) {'[DBG]: '} else {''})  +`
    'PS ' +`
    $(Get-Location) +`
    $(if ($nestedpromptlevel -ge 1) { '>>' }) + '> '
}

function ll
{
    /bin/ls -lA
}

function SymLink()
{
    param
    (
        [Parameter(Mandatory=$true, Position=0)] [string]$Name, 
        [Parameter(Mandatory=$true, Position=1)] [string]$Target,
        [Parameter(Mandatory=$false)] [Switch]$Force
    )

    $flag=$(if ($force) {'--force'} else {''})

    /bin/ln $flag --symbolic $Target $Name

    if ($LASTEXITCODE) {throw("Symlink failed")}
}