package com.kpc.board;


public class MovieVO {
   private int movieCode;
   private String title;//제목
   private String link;//영화링크
   private String image;//썸네일
   private String subtitle;
   private String puddate;//제작년도
   private String director;
   private String actor;
   private String score;
   private String overview;
   private String genres;
   private String date;
   private int count;

   public int getMovieCode() {
      return movieCode;
   }
   public void setMovieCode(int movieCode) {
      this.movieCode = movieCode;
   }
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getLink() {
      return link;
   }
   public void setLink(String link) {
      this.link = link;
   }
   public String getImage() {
      return image;
   }
   public void setImage(String image) {
      this.image = image;
   }
   public String getSubtitle() {
      return subtitle;
   }
   public void setSubtitle(String subtitle) {
      this.subtitle = subtitle;
   }
   public String getPuddate() {
      return puddate;
   }
   public void setPuddate(String puddate) {
      this.puddate = puddate;
   }
   public String getDirector() {
      return director;
   }
   public void setDirector(String director) {
      this.director = director;
   }
   public String getActor() {
      return actor;
   }
   public void setActor(String actor) {
      this.actor = actor;
   }
public String getScore() {
	return score;
}
public void setScore(String score) {
	this.score = score;
}
public String getOverview() {
	return overview;
}
public void setOverview(String overview) {
	this.overview = overview;
}
public String getGenres() {
	return genres;
}
public void setGenres(String genres) {
	this.genres = genres;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}

   
   
   

}