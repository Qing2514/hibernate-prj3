package cn.edu.zjut.dao;

import cn.edu.zjut.po.Address;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;

import java.util.List;

public class AddressDAO extends BaseHibernateDAO
{
    private Log log = LogFactory.getLog(AddressDAO.class);

    public List findByHql(String hql)
    {
        log.debug("finding Address instance by hql");
        try
        {
            String queryString = hql;
            Query queryObject = getSession().createQuery(queryString);
            return queryObject.list();
        }
        catch (RuntimeException re)
        {
            log.error("find by hql failed", re);
            throw re;
        }
    }

    public void save(Address instance)
    {
        log.debug("saving Address instance");
        try
        {
            getSession().save(instance);
            log.debug("save successful");
        }
        catch (RuntimeException re)
        {
            log.error("save failed", re);
            throw re;
        }
    }

    public void update(Address instance)
    {
        log.debug("updating Address instance");
        try
        {
            getSession().update(instance);
            log.debug("update successful");
        }
        catch (RuntimeException re)
        {
            log.error("update failed", re);
            throw re;
        }
    }

    public void delete(Address instance)
    {
        log.debug("deleting Address instance");
        try
        {
            getSession().delete(instance);
            log.debug("delete successful");
        }
        catch (RuntimeException re)
        {
            log.error("delete failed", re);
            throw re;
        }
    }
}
