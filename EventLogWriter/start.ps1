$executable = "C:\app\EventLogWriter.exe"
$workingDirectory = "C:\some\dir"
$taskName = "SampleTask"
$taskDescription = "Sample of scheduling commands"

$action = New-ScheduledTaskAction `
    -Execute $executable `
    -WorkingDirectory $workingDirectory

$trigger = New-ScheduledTaskTrigger `
    -Once `
    -At (Get-Date) `
    -RepetitionInterval (New-TimeSpan -Minutes 1)

Register-ScheduledTask `
    -Action $action `
    -Trigger $trigger `
    -TaskName $taskName `
    -Description $taskDescription
