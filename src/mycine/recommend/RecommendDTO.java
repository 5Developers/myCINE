package mycine.recommend;

public class RecommendDTO {
	
	private int idx;
	private int checked; //��õ��. ��õ ��:-1, ��õ ��:0 
	
	public RecommendDTO(){
		
	}
	
	public RecommendDTO(int idx, int checked) {
		super();
		this.idx = idx;
		this.checked = checked;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getChecked() {
		return checked;
	}

	public void setChecked(int checked) {
		this.checked = checked;
	}
}
