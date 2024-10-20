package entities;

import java.sql.Timestamp;

public class QuestionPostEntity {
	private int id;
	private String title;
	private String details;
	private String expectation;
	private String tags;
	private String solution;
	private Timestamp cretaedAt;
	private int likeSolution;
	private int disLikeSolution;
	public int getLikeSolution() {
		return likeSolution;
	}
	public void setLikeSolution(int likeSolution) {
		this.likeSolution = likeSolution;
	}
	public int getDisLikeSolution() {
		return disLikeSolution;
	}
	public void setDisLikeSolution(int disLikeSolution) {
		this.disLikeSolution = disLikeSolution;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getExpectation() {
		return expectation;
	}
	public void setExpectation(String expectation) {
		this.expectation = expectation;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
	public Timestamp getCretaedAt() {
		return cretaedAt;
	}
	public void setCretaedAt(Timestamp cretaedAt) {
		this.cretaedAt = cretaedAt;
	}
	@Override
	public String toString() {
		return "QuestionPostEntity [id=" + id + ", title=" + title + ", details=" + details + ", expectation="
				+ expectation + ", tags=" + tags + ", solution=" + solution + ", cretaedAt=" + cretaedAt + "]";
	}
	
	
}
