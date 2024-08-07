///*
//Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
//
//The MySQL Connector/C++ is licensed under the terms of the GPLv2
//<http://www.gnu.org/licenses/old-licenses/gpl-2.0.html>, like most
//MySQL Connectors. There are special exceptions to the terms and
//conditions of the GPLv2 as it is applied to this software, see the
//FLOSS License Exception
//<http://www.mysql.com/about/legal/licensing/foss-exception.html>.
//
//This program is free software; you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published
//by the Free Software Foundation; version 2 of the License.
//
//This program is distributed in the hope that it will be useful, but
//WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
//or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
//for more details.
//
//You should have received a copy of the GNU General Public License along
//with this program; if not, write to the Free Software Foundation, Inc.,
//51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
//*/
//
//
//
//#ifndef _SQL_WARNING_H_
//#define _SQL_WARNING_H_
//
//
//#include <stdexcept>
//#include <string>
//#include <memory>
//#include "sqlstring.h"
//
//namespace sql
//{
//
//#ifdef _WIN32
//#pragma warning (disable : 4290)
////warning C4290: C++ exception specification ignored except to indicate a function is not __declspec(nothrow)
//#endif
//
//class SQLWarning
//{
//public:
//
//	SQLWarning(){}
//
//	virtual const sql::SQLString & getMessage() const = 0;
//
//	virtual const sql::SQLString & getSQLState() const = 0;
//
//	virtual int getErrorCode() const = 0;
//
//	virtual const SQLWarning * getNextWarning() const = 0;
//
//	virtual void setNextWarning(const SQLWarning * _next) = 0;
//
//protected:
//
//	virtual ~SQLWarning(){};
//
//	SQLWarning(const SQLWarning& e){};
//
//private:
//	const SQLWarning & operator = (const SQLWarning & rhs);
//
//};
//
//
//} /* namespace sql */
//
//#endif /* _SQL_WARNING_H_ */
