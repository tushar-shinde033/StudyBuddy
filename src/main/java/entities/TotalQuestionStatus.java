package entities;

public class TotalQuestionStatus {
  private int totalQuestionPosted;
  private int totalAnswerPending;
  private int totalAnswerPosted;
@Override
public String toString() {
	return "TotalQuestionStatus [totalQuestionPosted=" + totalQuestionPosted + ", totalAnswerPending="
			+ totalAnswerPending + ", totalAnswerPosted=" + totalAnswerPosted + "]";
}
public int getTotalQuestionPosted() {
	return totalQuestionPosted;
}
public void setTotalQuestionPosted(int totalQuestionPosted) {
	this.totalQuestionPosted = totalQuestionPosted;
}
public int getTotalAnswerPending() {
	return totalAnswerPending;
}
public void setTotalAnswerPending(int totalAnswerPending) {
	this.totalAnswerPending = totalAnswerPending;
}
public int getTotalAnswerPosted() {
	return totalAnswerPosted;
}
public void setTotalAnswerPosted(int totalAnswerPosted) {
	this.totalAnswerPosted = totalAnswerPosted;
}
  
  
  
}
