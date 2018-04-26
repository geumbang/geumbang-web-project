package model;

public class Logs {
	
	private int loggerId;
	private String dated;
	private String logger;
	private String level;
	private String message;
	
	public int getLoggerId() {
		return loggerId;
	}
	public void setLoggerId(int loggerId) {
		this.loggerId = loggerId;
	}
	public String getDated() {
		return dated;
	}
	public void setDated(String dated) {
		this.dated = dated;
	}
	public String getLogger() {
		return logger;
	}
	public void setLogger(String logger) {
		this.logger = logger;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "Logs [loggerId=" + loggerId + ", dated=" + dated + ", logger=" + logger + ", level=" + level
				+ ", message=" + message + "]";
	}

}
