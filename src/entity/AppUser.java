package entity;

/**
 * Created by naim on 3/5/2020.
 */

public class AppUser {


    private String email;
    private String password;

    public AppUser() {
    }
//hiii
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "AppUser{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
