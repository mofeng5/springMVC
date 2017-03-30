package com.mofeng.repository;

import com.mofeng.model.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by mofeng on 2017/3/30.
 */
@Repository
public interface BlogRepository extends JpaRepository<BlogEntity, Integer>{
}
