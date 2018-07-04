package com.friendtracking.planning.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.friendtracking.planning.entities.FriendTestEntity;

@Repository
@Transactional
public class FriendTestDAO {
    


    @Autowired
    private SessionFactory sessionFactory;

    public List<FriendTestEntity> getName(String name) {
        Session session = null;
        session = sessionFactory.getCurrentSession();
        String sql = "from FriendTestEntity e where e.name like :name";

        return session.createQuery(sql, FriendTestEntity.class).setParameter("name", "%" + name + "%").getResultList();
    }

    public List<FriendTestEntity> getAll() {
        Session session = null;
        try {
            session = sessionFactory.getCurrentSession();
            String sql = "from FriendTestEntity";
            return session.createQuery(sql, FriendTestEntity.class).getResultList();

        } catch (Exception e) {
            throw e;
        }
    }

}
