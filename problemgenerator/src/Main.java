import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

public class Main {

	private static ArrayList<GASLevel> gaslevels = new ArrayList<>();

	private static ArrayList<ProblemGenerator> pgs = new ArrayList<>();

	public static void main(String[] args) throws FileNotFoundException,
			UnsupportedEncodingException {
		// initialize levels and pgs
		initlevels();
		pgs.add(new ProblemGenerator_v1());
		pgs.add(new ProblemGenerator_v2());

		// start generation
		for (GASLevel gaslevel : gaslevels) {
			GASLevel translevel = gaslevel.transform();
			for (ProblemGenerator pg : pgs)
				pg.generate(translevel);
		}
	}

	private static void initlevels() {
		gaslevels.add(level0());
		gaslevels.add(level1());
		gaslevels.add(level2());
		gaslevels.add(level3());
		gaslevels.add(level4());
		gaslevels.add(level5());
		gaslevels.add(level6());
		gaslevels.add(level7());
		gaslevels.add(level8());
		gaslevels.add(level9());
		gaslevels.add(level10());
		gaslevels.add(level11());
		gaslevels.add(level12());
		gaslevels.add(level13());
		gaslevels.add(level14());
		gaslevels.add(level15());
		gaslevels.add(level16());
		gaslevels.add(level17());
		gaslevels.add(level18());
		gaslevels.add(level19());
		gaslevels.add(level20());
		gaslevels.add(level21());
		gaslevels.add(level22());
		gaslevels.add(level23());
		gaslevels.add(level24());
		gaslevels.add(level25());
		gaslevels.add(level26());
		gaslevels.add(level27());
		gaslevels.add(level28());
		gaslevels.add(level29());
		gaslevels.add(level30());
		gaslevels.add(level31());
		gaslevels.add(level32());
		gaslevels.add(level33());
		gaslevels.add(level34());
		gaslevels.add(level35());
	}

	private static GASLevel level0() {
		int level = 0;
		int width = 1;
		int height = 3;
		String[] squares = { "RedSquare" };
		String[] dirs = { "down" };
		int[] pos_x = { 0 };
		int[] pos_y = { 2 };
		int[] pos_x_final = { 0 };
		int[] pos_y_final = { 0 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level1() {
		int level = 1;
		int width = 1;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare" };
		String[] dirs = { "up", "down" };
		int[] pos_x = { 0, 0 };
		int[] pos_y = { 0, 3 };
		int[] pos_x_final = { 0, 0 };
		int[] pos_y_final = { 1, 2 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level2() {
		int level = 2;
		int width = 4;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "up", "left" };
		int[] pos_x = { 0, 1, 3 };
		int[] pos_y = { 2, 0, 1 };
		int[] pos_x_final = { 2, 1, 1 };
		int[] pos_y_final = { 2, 2, 1 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level3() {
		int level = 3;
		int width = 5;
		int height = 6;
		String[] squares = { "RedSquare", "BlueSquare" };
		String[] dirs = { "left", "down" };
		int[] pos_x = { 4, 2 };
		int[] pos_y = { 3, 5 };
		int[] pos_x_final = { 0, 2 };
		int[] pos_y_final = { 2, 0 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level4() {
		int level = 4;
		int width = 4;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "right", "down" };
		int[] pos_x = { 1, 0, 2 };
		int[] pos_y = { 3, 2, 2 };
		int[] pos_x_final = { 1, 3, 2 };
		int[] pos_y_final = { 2, 0, 1 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level5() {
		int level = 5;
		int width = 4;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "right", "down" };
		int[] pos_x = { 1, 0, 2 };
		int[] pos_y = { 3, 2, 2 };
		int[] pos_x_final = { 1, 2, 3 };
		int[] pos_y_final = { 2, 1, 0 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level6() {
		int level = 6;
		int width = 5;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "left", "up" };
		int[] pos_x = { 3, 4, 2 };
		int[] pos_y = { 3, 2, 1 };
		int[] pos_x_final = { 2, 1, 0 };
		int[] pos_y_final = { 0, 2, 3 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level7() {
		int level = 7;
		int width = 3;
		int height = 3;
		String[] squares = { "BlueSquare" };
		String[] dirs = { "down" };
		int[] pos_x = { 0 };
		int[] pos_y = { 2 };
		int[] pos_x_final = { 2 };
		int[] pos_y_final = { 2 };
		String[] dcs = { "right", "up" };
		int[] dc_pos_x = { 0, 2 };
		int[] dc_pos_y = { 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level8() {
		int level = 8;
		int width = 4;
		int height = 3;
		String[] squares = { "OrangeSquare", "BlackSquare" };
		String[] dirs = { "down", "right" };
		int[] pos_x = { 0, 0 };
		int[] pos_y = { 2, 0 };
		int[] pos_x_final = { 2, 3 };
		int[] pos_y_final = { 2, 2 };
		String[] dcs = { "right", "up" };
		int[] dc_pos_x = { 0, 2 };
		int[] dc_pos_y = { 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level9() {
		int level = 9;
		int width = 4;
		int height = 2;
		String[] squares = { "BlueSquare", "OrangeSquare" };
		String[] dirs = { "up", "right" };
		int[] pos_x = { 2, 0 };
		int[] pos_y = { 0, 0 };
		int[] pos_x_final = { 2, 1 };
		int[] pos_y_final = { 1, 1 };
		String[] dcs = { "right", "up", "left" };
		int[] dc_pos_x = { 0, 2, 3 };
		int[] dc_pos_y = { 0, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level10() {
		int level = 10;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "left", "up" };
		int[] pos_x = { 2, 4, 2 };
		int[] pos_y = { 4, 2, 0 };
		int[] pos_x_final = { 1, 3, 0 };
		int[] pos_y_final = { 2, 2, 2 };
		String[] dcs = { "right" };
		int[] dc_pos_x = { 2 };
		int[] dc_pos_y = { 2 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level11() {
		int level = 11;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "left", "up" };
		int[] pos_x = { 0, 4, 2 };
		int[] pos_y = { 4, 4, 0 };
		int[] pos_x_final = { 1, 2, 3 };
		int[] pos_y_final = { 2, 2, 2 };
		String[] dcs = { "down" };
		int[] dc_pos_x = { 2 };
		int[] dc_pos_y = { 4 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level12() {
		int level = 12;
		int width = 4;
		int height = 4;
		String[] squares = { "BlackSquare", "OrangeSquare" };
		String[] dirs = { "up", "right" };
		int[] pos_x = { 2, 0 };
		int[] pos_y = { 0, 1 };
		int[] pos_x_final = { 1, 1 };
		int[] pos_y_final = { 2, 1 };
		String[] dcs = { "down", "left" };
		int[] dc_pos_x = { 1, 3 };
		int[] dc_pos_y = { 3, 2 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level13() {
		int level = 13;
		int width = 4;
		int height = 6;
		String[] squares = { "BlueSquare", "BlackSquare", "OrangeSquare" };
		String[] dirs = { "up", "down", "left" };
		int[] pos_x = { 2, 1, 3 };
		int[] pos_y = { 0, 4, 2 };
		int[] pos_x_final = { 1, 1, 0 };
		int[] pos_y_final = { 3, 5, 1 };
		String[] dcs = { "down" };
		int[] dc_pos_x = { 1 };
		int[] dc_pos_y = { 4 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level14() {
		int level = 14;
		int width = 3;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare", "OrangeSquare" };
		String[] dirs = { "left", "up", "down", "right" };
		int[] pos_x = { 2, 1, 1, 0 };
		int[] pos_y = { 1, 0, 2, 1 };
		int[] pos_x_final = { 0, 1, 2, 2 };
		int[] pos_y_final = { 2, 1, 0, 2 };
		String[] dcs = {};
		int[] dc_pos_x = {};
		int[] dc_pos_y = {};
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level15() {
		int level = 15;
		int width = 4;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare" };
		String[] dirs = { "down", "up" };
		int[] pos_x = { 0, 2 };
		int[] pos_y = { 2, 0 };
		int[] pos_x_final = { 1, 1 };
		int[] pos_y_final = { 1, 0 };
		String[] dcs = { "down", "left", "right" };
		int[] dc_pos_x = { 0, 3, 0 };
		int[] dc_pos_y = { 2, 2, 1 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level16() {
		int level = 16;
		int width = 4;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare" };
		String[] dirs = { "right", "left" };
		int[] pos_x = { 0, 2 };
		int[] pos_y = { 2, 1 };
		int[] pos_x_final = { 0, 3 };
		int[] pos_y_final = { 1, 1 };
		String[] dcs = { "right", "down", "left", "up" };
		int[] dc_pos_x = { 0, 2, 2, 1 };
		int[] dc_pos_y = { 2, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level17() {
		int level = 17;
		int width = 4;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "left", "right" };
		int[] pos_x = { 0, 3, 0 };
		int[] pos_y = { 2, 2, 1 };
		int[] pos_x_final = { 1, 3, 2 };
		int[] pos_y_final = { 1, 1, 1 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 0, 3, 0, 2 };
		int[] dc_pos_y = { 2, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level18() {
		int level = 18;
		int width = 4;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "left", "down" };
		int[] pos_x = { 0, 3, 0 };
		int[] pos_y = { 1, 2, 2 };
		int[] pos_x_final = { 1, 3, 2 };
		int[] pos_y_final = { 1, 1, 1 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 0, 3, 0, 2 };
		int[] dc_pos_y = { 2, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level19() {
		int level = 19;
		int width = 4;
		int height = 7;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "down", "up" };
		int[] pos_x = { 0, 1, 2 };
		int[] pos_y = { 3, 2, 1 };
		int[] pos_x_final = { 2, 2, 2 };
		int[] pos_y_final = { 6, 4, 2 };
		String[] dcs = { "down", "down", "left", "right", "up", "right", "up" };
		int[] dc_pos_x = { 0, 1, 3, 1, 2, 0, 3 };
		int[] dc_pos_y = { 3, 2, 2, 1, 1, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level20() {
		int level = 20;
		int width = 3;
		int height = 5;
		String[] squares = { "PurpleSquare", "GraySquare", "GreenSquare", "BlackSquare" };
		String[] dirs = { "left", "up", "right", "down" };
		int[] pos_x = { 2, 2, 0, 0 };
		int[] pos_y = { 4, 2, 2, 4 };
		int[] pos_x_final = { 1, 2, 1, 0 };
		int[] pos_y_final = { 2, 3, 4, 3 };
		String[] dcs = { "down", "left", "right", "up", "up" };
		int[] dc_pos_x = { 0, 2, 0, 2, 0 };
		int[] dc_pos_y = { 4, 4, 2, 2, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level21() {
		int level = 21;
		int width = 3;
		int height = 5;
		String[] squares = { "RedSquare", "GreenSquare", "YellowSquare", "BlackSquare" };
		String[] dirs = { "right", "up", "left", "down" };
		int[] pos_x = { 0, 2, 2, 0 };
		int[] pos_y = { 0, 0, 4, 4 };
		int[] pos_x_final = { 2, 2, 2, 0 };
		int[] pos_y_final = { 3, 2, 1, 3 };
		String[] dcs = { "down", "left", "up", "down", "right", "up" };
		int[] dc_pos_x = { 0, 2, 0, 0, 0, 2 };
		int[] dc_pos_y = { 4, 4, 2, 1, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level22() {
		int level = 22;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "down", "down" };
		int[] pos_x = { 0, 1, 4 };
		int[] pos_y = { 2, 4, 3 };
		int[] pos_x_final = { 2, -1, -1 };
		int[] pos_y_final = { 4, -1, -1 };
		String[] dcs = { "down", "right", "left", "up" };
		int[] dc_pos_x = { 1, 0, 4, 1 };
		int[] dc_pos_y = { 4, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level23() {
		int level = 23;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "left", "down", "right" };
		int[] pos_x = { 4, 1, 0 };
		int[] pos_y = { 3, 4, 2 };
		int[] pos_x_final = { 1, 2, 3 };
		int[] pos_y_final = { 1, 1, 1 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 2, 4, 0, 2 };
		int[] dc_pos_y = { 4, 3, 2, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level24() {
		int level = 24;
		int width = 4;
		int height = 6;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "down", "down", "up" };
		int[] pos_x = { 0, 1, 2 };
		int[] pos_y = { 3, 2, 1 };
		int[] pos_x_final = { 0, 1, 2 };
		int[] pos_y_final = { 5, 4, 3 };
		String[] dcs = { "down", "down", "left", "right", "up", "right", "up" };
		int[] dc_pos_x = { 0, 1, 3, 1, 2, 0, 3 };
		int[] dc_pos_y = { 3, 2, 2, 1, 1, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level25() {
		int level = 25;
		int width = 4;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "up", "down", "right" };
		int[] pos_x = { 2, 0, 0 };
		int[] pos_y = { 0, 2, 0 };
		int[] pos_x_final = { 0, 1, 2 };
		int[] pos_y_final = { 3, 3, 3 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 0, 3, 0, 2 };
		int[] dc_pos_y = { 2, 2, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level26() {
		int level = 26;
		int width = 4;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare", "OrangeSquare" };
		String[] dirs = { "up", "right", "left", "down" };
		int[] pos_x = { 2, 0, 3, 1 };
		int[] pos_y = { 0, 1, 2, 3 };
		int[] pos_x_final = { 1, 0, 3, 2 };
		int[] pos_y_final = { 0, 2, 1, 3 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 1, 3, 0, 2 };
		int[] dc_pos_y = { 3, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level27() {
		int level = 27;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "left", "down" };
		int[] pos_x = { 0, 4, 1 };
		int[] pos_y = { 2, 3, 4 };
		int[] pos_x_final = { 1, 2, 3 };
		int[] pos_y_final = { 1, 1, 1 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 3, 4, 0, 3 };
		int[] dc_pos_y = { 4, 3, 2, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level28() {
		int level = 28;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "down", "down" };
		int[] pos_x = { 0, 1, 4 };
		int[] pos_y = { 2, 4, 3 };
		int[] pos_x_final = { -1, 0, -1 };
		int[] pos_y_final = { -1, 3, -1 };
		String[] dcs = { "down", "right", "left", "up" };
		int[] dc_pos_x = { 1, 0, 4, 1 };
		int[] dc_pos_y = { 4, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level29() {
		int level = 29;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare", "OrangeSquare" };
		String[] dirs = { "right", "down", "left", "up" };
		int[] pos_x = { 0, 2, 4, 2 };
		int[] pos_y = { 2, 4, 2, 0 };
		int[] pos_x_final = { 2, 3, 2, 1 };
		int[] pos_y_final = { 3, 2, 1, 2 };
		String[] dcs = { "down", "left", "up" };
		int[] dc_pos_x = { 2, 4, 2 };
		int[] dc_pos_y = { 4, 2, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level30() {
		int level = 30;
		int width = 4;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "up", "down" };
		int[] pos_x = { 0, 2, 0 };
		int[] pos_y = { 0, 0, 3 };
		int[] pos_x_final = { 0, 0, 1 };
		int[] pos_y_final = { 1, 2, 3 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 0, 3, 0, 2 };
		int[] dc_pos_y = { 3, 3, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level31() {
		int level = 31;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "left", "down", "right" };
		int[] pos_x = { 3, 2, 1 };
		int[] pos_y = { 2, 4, 3 };
		int[] pos_x_final = { 2, 0, 4 };
		int[] pos_y_final = { 2, 2, 2 };
		String[] dcs = { "down", "right", "left", "up" };
		int[] dc_pos_x = { 2, 1, 3, 2 };
		int[] dc_pos_y = { 4, 3, 2, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level32() {
		int level = 32;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "down", "down" };
		int[] pos_x = { 0, 1, 4 };
		int[] pos_y = { 2, 4, 3 };
		int[] pos_x_final = { 2, 0, -1 };
		int[] pos_y_final = { 4, 3, -1 };
		String[] dcs = { "down", "right", "left", "up" };
		int[] dc_pos_x = { 1, 0, 4, 1 };
		int[] dc_pos_y = { 4, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level33() {
		int level = 33;
		int width = 5;
		int height = 4;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "up", "down", "right" };
		int[] pos_x = { 3, 1, 1 };
		int[] pos_y = { 0, 2, 0 };
		int[] pos_x_final = { 1, 0, 2 };
		int[] pos_y_final = { 3, 3, 3 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 1, 4, 1, 3 };
		int[] dc_pos_y = { 2, 2, 0, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level34() {
		int level = 34;
		int width = 4;
		int height = 3;
		String[] squares = { "RedSquare", "BlueSquare", "BlackSquare" };
		String[] dirs = { "right", "left", "down" };
		int[] pos_x = { 0, 3, 0 };
		int[] pos_y = { 1, 2, 2 };
		int[] pos_x_final = { 2, 3, 1 };
		int[] pos_y_final = { 1, 0, 0 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 0, 3, 0, 2 };
		int[] dc_pos_y = { 2, 2, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}

	private static GASLevel level35() {
		int level = 35;
		int width = 5;
		int height = 5;
		String[] squares = { "RedSquare", "BlackSquare", "OrangeSquare" };
		String[] dirs = { "right", "right", "right" };
		int[] pos_x = { 1, 2, 0 };
		int[] pos_y = { 0, 0, 0 };
		int[] pos_x_final = { 3, 2, 4 };
		int[] pos_y_final = { 4, 4, 4 };
		String[] dcs = { "down", "left", "right", "up" };
		int[] dc_pos_x = { 1, 4, 0, 3 };
		int[] dc_pos_y = { 4, 3, 1, 0 };
		return new GASLevel(level, width, height, squares, dirs, pos_x, pos_y, pos_x_final,
				pos_y_final, dcs, dc_pos_x, dc_pos_y);
	}
}