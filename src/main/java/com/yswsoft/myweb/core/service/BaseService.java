package com.yswsoft.myweb.core.service;

import java.io.Serializable;

public interface BaseService<T> {
	T load(Serializable id);
	T find(String name);
	T add(T t);
	T del(T t);
}
