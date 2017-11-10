package org.democode.mine;

import org.democode.mine.Console;

public class HelloMaven
{
    public static void main(String[] args)
    {
        System.out.println("\n+-----------------+");
        System.out.println("|  Hello Maven!   |");
        System.out.println("+-----------------+\n");

        Console console = new Console();
        console.log(args);
    }

    public boolean tested()
    {
        return false;
    }
}
