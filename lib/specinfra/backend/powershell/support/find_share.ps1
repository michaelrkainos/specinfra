function FindShare
{
  param($shareName)
  

  Get-WmiObject Win32_Share -filter "Name = '$shareName'"
}