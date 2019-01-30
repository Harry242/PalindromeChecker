public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if( reverse(noSpaces(noCapitals(onlyLetters(word)))).equals(noSpaces(noCapitals(onlyLetters(word)))))
  {
    return true;
  }
return false;
}
public String reverse(String str)
{
 String bob=new String();
  for(int i=0;i<str.length();i++)
  {
    bob= bob+str.substring(str.length()-1-i,str.length()-i);
  }
  return(bob);
}
public String noSpaces(String sWord)
{
  boolean nob= true;
  String cob=new String();
  for(int k=0; k<sWord.length();k++)
  {
    if (sWord.substring(k,k+1).equals(" "))
    {
      nob=false;
    }
    else
    {
      nob=true;
    }
    if (nob==true)
    {
        cob= cob + sWord.substring(k,k+1);
    }
  }
  return(cob);
}
public String onlyLetters(String sString){
  String sob="";
  int j=0;
  while (j <sString.length())
  {
    if(Character.isLetter(sString.charAt(j)))
    {
      sob=sob+sString.charAt(j);
    }
    j++;
  }
  return(sob);
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
