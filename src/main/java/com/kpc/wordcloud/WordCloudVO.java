package com.kpc.wordcloud;
public class WordCloudVO {
	//seq, movie_code, site, rword, rcnt
	private int seq;
	private int movieCode;
	private String site;
	private String rword;
	private int rcnt;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getMovieCode() {
		return movieCode;
	}
	public void setMovieCode(int movieCode) {
		this.movieCode = movieCode;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getRword() {
		return rword;
	}
	public void setRword(String rword) {
		this.rword = rword;
	}
	public int getRcnt() {
		return rcnt;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	@Override
	public String toString() {
		return "WordCloudVO [seq=" + seq + ", movieCode=" + movieCode + ", site=" + site + ", rword=" + rword
				+ ", rcnt=" + rcnt + "]";
	}


}