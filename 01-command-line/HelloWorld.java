import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class HelloWorld
{
    public static void main(String[] args)
    {
        try {

            System.out.println("\n");
            System.out.println("Hello World!");
            System.out.println("\n");

        } catch (IOException e)  {
            e.printStackTrace();
        }
    }
}