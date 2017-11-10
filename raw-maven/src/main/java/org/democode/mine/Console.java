package org.democode.mine;

public class Console
{
    public static void main(String[] args)
    {
    }

    public void log(String[] arguments)
    {
        if (arguments.length > 0) {
            System.out.print("\nPassed " + arguments.length + " command-line arguments: ");
            int c = 0;
            for (int item = 0; item < arguments.length; item++) {
                System.out.print("\n" + (++c) + ") " + arguments[item]);
            }
            System.out.print("\n");
        } else {
            System.out.print("\nZero arguments passed");
            System.out.print("\n");
        }
   }
}