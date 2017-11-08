public class HelloWorld
{
    public static void main(String[] args)
    {
        System.out.println("\n+-----------------+");
        System.out.println("|  Hello World!   |");
        System.out.println("+-----------------+\n");
        // sort-of console.log()
        if (args.length > 0) {
            System.out.print("\nPassed " + args.length + " command-line arguments: ");
            int c = 0;
            for (int i = 0; i < args.length; i++) {
                System.out.print("\n" + (++c) + ") " + args[i]);
            }
            System.out.print("\n");
        }

    }
}
