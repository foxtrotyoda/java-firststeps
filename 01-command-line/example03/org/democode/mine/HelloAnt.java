package org.democode.mine;

import org.democode.mine.Console;

public class HelloAnt
{
    public static void main(String[] args)
    {
        System.out.println("\n+-----------------+");
        System.out.println("|  Hello my ant!  |");
        System.out.println("+-----------------+\n");

        Console console = new Console();
        console.log(args);
    }
}
