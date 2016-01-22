public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String s = new String();
  String t = new String();
 
  for(int i = 0; i < word.length(); i++)  
  {
    if(!word.substring(i, i+1).equals(" ") && Character.isLetter(word.charAt(i)) == true)   
    {
      s = s + word.substring(i, i+1);
    }
  }

  s = s.toLowerCase();

//reverse string
  for(int i = s.length()-1; i >= 0; i--)  
  {
    t = t + s.substring(i, i+1);
  }

  if(t.equals(s))  
  {
    return true;
  }
  return false;
}
