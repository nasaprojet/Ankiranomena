package ModelDao;

import java.util.List;

import User.Classe;
import User.UserModel;

public interface UserDao {
	void ajoutUser(UserModel user) throws Exception;
	 List<UserModel> voirUser() throws Exception;
	void updateUser(int user_id,UserModel user) throws Exception;
	void deletetUser(int user_id) throws Exception;
	 List<UserModel> voirUser(int user_id) throws Exception;
}
