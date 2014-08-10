/**
 * A representation of a level of gameaboutsquares.
 */
public class GASLevel {

	/**
	 * The level of the game.
	 */
	private int level;

	/**
	 * The width of the board.
	 */
	private int width;

	/**
	 * The height of the board.
	 */
	private int height;

	/**
	 * The name of the square objects.
	 */
	private String[] squares;

	/**
	 * The directions of the squares.
	 */
	private String[] dirs;

	/**
	 * The initial x-coordinates of the squares.
	 */
	private int[] pos_x;

	/**
	 * The initial y-coordinates of the squares.
	 */
	private int[] pos_y;

	/**
	 * The goal x-coordinates of the squares (-1 if there is no constraint for
	 * that).
	 */
	private int[] pos_x_final;

	/**
	 * The goal y-coordinates of the squares (-1 if there is no constraint for
	 * that)
	 */
	private int[] pos_y_final;

	/**
	 * The direction changers (left, right, up, down).
	 */
	private String[] dcs;

	/**
	 * The x-coordinates of the direction changers.
	 */
	private int[] dc_pos_x;

	/**
	 * The y-coordinates of the direction changers.
	 */
	private int[] dc_pos_y;

	public GASLevel(int level, int width, int height, String[] squares, String[] dirs, int[] pos_x,
			int[] pos_y, int[] pos_x_final, int[] pos_y_final, String[] dcs, int[] dc_pos_x,
			int[] dc_pos_y) {
		int len = squares.length;
		if (dirs.length != len || pos_x.length != len || pos_y.length != len
				|| pos_x_final.length != len || pos_y_final.length != len) {
			throw new IllegalStateException(
					"Illegal representation. Length of squares array does not equal to the lengh of some other related array");
		}
		len = dcs.length;
		if (dc_pos_x.length != len || dc_pos_y.length != len) {
			throw new IllegalStateException(
					"Illegal representation. Length of dcs array does not equal to the lengh of some other related array");
		}
		this.level = level;
		this.width = width;
		this.height = height;
		this.squares = squares;
		this.dirs = dirs;
		this.pos_x = pos_x;
		this.pos_y = pos_y;
		this.pos_x_final = pos_x_final;
		this.pos_y_final = pos_y_final;
		this.dcs = dcs;
		this.dc_pos_x = dc_pos_x;
		this.dc_pos_y = dc_pos_y;
	}

	/**
	 * Creates a new representation of the level by over-approximating the
	 * bounds.
	 * 
	 * @return
	 */
	public GASLevel transform() {
		int numofsquares = squares.length;
		int new_width = width + 2 * numofsquares;
		int new_height = height + 2 * numofsquares;
		int[] new_pos_x = pos_x;
		int[] new_pos_y = pos_y;
		int[] new_pos_x_final = pos_x_final;
		int[] new_pos_y_final = pos_y_final;
		int[] new_dc_pos_x = dc_pos_x;
		int[] new_dc_pos_y = dc_pos_y;
		for (int i = 0; i < numofsquares; i++) {
			new_pos_x[i] += numofsquares;
			new_pos_y[i] += numofsquares;
			if (pos_x_final[i] != -1)
				new_pos_x_final[i] += numofsquares;
			if (pos_y_final[i] != -1)
				new_pos_y_final[i] += numofsquares;
		}
		for (int i = 0; i < dcs.length; i++) {
			new_dc_pos_x[i] += numofsquares;
			new_dc_pos_y[i] += numofsquares;
		}

		return new GASLevel(level, new_width, new_height, squares, dirs, new_pos_x, new_pos_y,
				new_pos_x_final, new_pos_y_final, dcs, new_dc_pos_x, new_dc_pos_y);
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String[] getSquares() {
		return squares;
	}

	public void setSquares(String[] squares) {
		this.squares = squares;
	}

	public String[] getDirs() {
		return dirs;
	}

	public void setDirs(String[] dirs) {
		this.dirs = dirs;
	}

	public int[] getPos_x() {
		return pos_x;
	}

	public void setPos_x(int[] pos_x) {
		this.pos_x = pos_x;
	}

	public int[] getPos_y() {
		return pos_y;
	}

	public void setPos_y(int[] pos_y) {
		this.pos_y = pos_y;
	}

	public int[] getPos_x_final() {
		return pos_x_final;
	}

	public void setPos_x_final(int[] pos_x_final) {
		this.pos_x_final = pos_x_final;
	}

	public int[] getPos_y_final() {
		return pos_y_final;
	}

	public void setPos_y_final(int[] pos_y_final) {
		this.pos_y_final = pos_y_final;
	}

	public String[] getDcs() {
		return dcs;
	}

	public void setDcs(String[] dcs) {
		this.dcs = dcs;
	}

	public int[] getDc_pos_x() {
		return dc_pos_x;
	}

	public void setDc_pos_x(int[] dc_pos_x) {
		this.dc_pos_x = dc_pos_x;
	}

	public int[] getDc_pos_y() {
		return dc_pos_y;
	}

	public void setDc_pos_y(int[] dc_pos_y) {
		this.dc_pos_y = dc_pos_y;
	}
}
