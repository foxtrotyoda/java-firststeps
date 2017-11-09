package org.democode.mine;

import org.democode.mine.Console;

public class Hello
{
    public static void main(String[] args)
    {
        System.out.println("\n+-----------------+");
        System.out.println("|  Just a hello!  |");
        System.out.println("+-----------------+\n");

        Console console = new Console();
        console.log(args);
    }
}
