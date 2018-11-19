package com.springmvcdemo.Data.Dao.Contract;

import java.util.List;
import java.util.UUID;

public interface DaoContract<T> {
    public List<T> GetAll();

    public T SelectByID(String ID);

    public int Delete(String ID);

    public int Modify(T entity);

    public int Create(T t);

    public int Create(List<T> entities);
}