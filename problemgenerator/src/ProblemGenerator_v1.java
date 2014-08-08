import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class ProblemGenerator_v1 implements ProblemGenerator {

	@Override
	public void generate(GASLevel gaslevel) throws FileNotFoundException,
			UnsupportedEncodingException {
		// get the fields (less typing afterwards)
		int level = gaslevel.getLevel();
		int width = gaslevel.getWidth();
		int height = gaslevel.getHeight();
		String[] squares = gaslevel.getSquares();
		String[] dirs = gaslevel.getDirs();
		int[] pos_x = gaslevel.getPos_x();
		int[] pos_y = gaslevel.getPos_y();
		int[] pos_x_final = gaslevel.getPos_x_final();
		int[] pos_y_final = gaslevel.getPos_y_final();
		String[] dcs = gaslevel.getDcs();
		int[] dc_pos_x = gaslevel.getDc_pos_x();
		int[] dc_pos_y = gaslevel.getDc_pos_y();

		// First, create the folder for this version
		File dir = new File("../v1");
		dir.mkdir();

		// Create the target file
		PrintWriter writer = new PrintWriter(String.format("../v1/level%d.pddl", level), "UTF-8");

		// The header
		writer.println(String.format("(define (problem level%d)", level));
		writer.println("  (:domain gameaboutsquares)");
		writer.println("  (:objects");
		for (int i = 0; i < squares.length; i++) {
			writer.println(String.format("    %s - square", squares[i]));
		}
		int lenx = String.valueOf(width).length();
		int leny = String.valueOf(height).length();
		String locationstring = "l_%0" + lenx + "d_%0" + leny + "d";
		for (int i = height - 1; i >= 0; i--) {
			writer.print("    ");
			for (int j = 0; j < width; j++) {
				writer.print(String.format(locationstring + " ", j, i));
			}
			writer.println("- location");
		}
		writer.println("    left right up down - direction)");

		// initial state
		writer.println("  (:init");
		for (int i = 0; i < squares.length; i++) {
			writer.println(String.format("    (at " + locationstring + " %s)", pos_x[i], pos_y[i],
					squares[i]));
			writer.println(String.format("    (dir %s %s)", dirs[i], squares[i]));
		}
		for (int i = 0; i < dcs.length; i++) {
			writer.println(String.format("    (at2 " + locationstring + " %s)", dc_pos_x[i],
					dc_pos_y[i], dcs[i]));
		}
		for (int i = height - 1; i >= 0; i--) {
			writer.print("    ");
			for (int j = 0; j < width; j++) {
				boolean doit = true;
				for (int k = 0; k < squares.length; k++) {
					if (pos_x[k] == j && pos_y[k] == i) {
						doit = false;
					}
				}
				if (doit)
					writer.print(String.format("(noSquare " + locationstring + ")%s", j, i,
							(j == width - 1) ? "" : " "));
				else {
					writer.print(String.format("               "));
					for (int cnt = 0; cnt < lenx + leny; cnt++)
						writer.print(" ");
				}
				if (j != width - 1)
					writer.print(" ");
			}
			writer.println("");
		}
		for (int i = 0; i < height && (width > 1); i++) {
			writer.print("    ");
			for (int j = 0; j < width - 1; j++) {
				String s1 = "";
				String s2 = "";
				s1 = String.format(
						"(adjacent " + locationstring + " " + locationstring + " right)", j, i,
						(j + 1), i);
				s2 = String.format("(adjacent " + locationstring + " " + locationstring + " left)",
						(j + 1), i, j, i);
				writer.print(String.format("%s %s%s", s1, s2, ((j == width - 2 ? "" : " "))));
			}
			writer.println("");
		}
		for (int i = 0; i < height - 1; i++) {
			writer.print("    ");
			for (int j = 0; j < width; j++) {
				String s1 = "";
				String s2 = "";
				s1 = String.format("(adjacent " + locationstring + " " + locationstring + " up)",
						j, i, j, (i + 1));
				s2 = String.format("(adjacent " + locationstring + " " + locationstring + " down)",
						j, (i + 1), j, i);
				writer.print(String.format("%s %s%s", s1, s2, ((j == width - 1 ? "" : " "))));
				if (j == width - 1 && i == height - 2) {
					writer.print(")");
				}
			}
			writer.println("");
		}

		// goal state
		writer.print("  (:goal (and");
		for (int i = 0; i < squares.length; i++) {
			if (pos_x_final[i] != -1 && pos_y_final[i] != -1) {
				writer.println("");
				writer.print(String.format("	   (at " + locationstring + " %s)", pos_x_final[i],
						pos_y_final[i], squares[i]));
			}
			if (i == squares.length - 1) {
				writer.print(")))");
			}
		}
		writer.close();
	}

}
