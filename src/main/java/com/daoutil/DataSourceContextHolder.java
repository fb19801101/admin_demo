package com.daoutil;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-05-31 13:29
 *
 * 切换数据库的工具类 DbContextHolder,用于持有当前线程中使用的数据源标识
 */
public class DataSourceContextHolder {
    public static final String DATA_SOURCE_DEFAULT = "project";
    public static final String DATA_SOURCE_TARGET = "finance";

    private static final ThreadLocal<String> DATA_SOURCE_THREAD = new ThreadLocal<>();

    /**
     * 设置当前数据库,提供给AOP去设置当前的线程的数据源的信息
     */
    public static void setDataSourceKey(String dataSource) {
        DATA_SOURCE_THREAD.set(dataSource);
    }

    /**
     * 取得当前数据库,提供给AbstractRoutingDataSource的实现类，通过key选择数据源
     */
    public static String getDataSourceKey() {
        return DATA_SOURCE_THREAD.get();
    }

    /**
     * 清除上下文数据,使用默认的数据源
     */
    public static void clearDataSourceKey() {
        DATA_SOURCE_THREAD.remove();
    }

    /**
     * 重置上下文数据,使用默认的数据源
     */
    public static void resetDataSourceKey() {
        DATA_SOURCE_THREAD.set(DATA_SOURCE_DEFAULT);
    }
}