#ifndef CPINTI_FS_HPP
#define CPINTI_FS_HPP

namespace cpinti::fs
{
	/**
	 * \brief check if path exist and if it's a file
	 * 
	 * \param path file location
	 * \return true if file exist otherwithe false
	 */
	bool file_exist(const char *path);

	/**
	 * \brief check if path exist and if it's a directory
	 * 
	 * \param path dir location
	 * \return true if directory exist otherwithe false
	 */
	bool dir_exist(const char *path);
}

#endif /* !CPINTI_FS_HPP */