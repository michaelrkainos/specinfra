function FindShare
{
  param($name)
  

  Get-WmiObject Win32_Share -filter "Name = '$name'"
}