import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;

public interface ProblemGenerator {
	/**
	 * Generates a problem file for a level of gameaboutsquares.
	 * 
	 * @param gaslevel
	 *            The representation of the level for which the problem file
	 *            will be generated.
	 * @throws FileNotFoundException
	 * @throws UnsupportedEncodingException
	 */
	public void generate(GASLevel gaslevel) throws FileNotFoundException, UnsupportedEncodingException;
}