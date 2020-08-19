package com.kpc.board;

public class ReviewVO {
   private int movieCode;
   private int score;
   private String review;
   private String date;
   private String site;
   private double emotion;

   public int getScore() {
      return score;
   }

   public void setScore(int score) {
      this.score = score;
   }

   public String getReview() {
      return review;
   }

   public void setReview(String review) {
      this.review = review;
   }

   public String getDate() {
      return date;
   }

   public void setDate(String date) {
      this.date = date;
   }

   public String getSite() {
      return site;
   }

   public void setSite(String site) {
      this.site = site;
   }

   public double getEmotion() {
      return emotion;
   }

   public void setEmotion(double emotion) {
      this.emotion = emotion;
   }

   public int getMovieCode() {
      return movieCode;
   }

   public void setMovieCode(int movieCode) {
      this.movieCode = movieCode;
   }

}