SELECT * FROM MgPlatform.GeneralControlDbResource

-- chnage connection string
UPDATE MgPlatform.GeneralControlDbResource
SET ConnectionStringMaster = REPLACE(
    ConnectionStringMaster,
    'm88-dbcluster-aurora-cluster.cluster-cz04mmi8y17a.ap-east-1.rds.amazonaws.com',
    '127.0.0.1'
),ConnectionStringSlave = REPLACE(
    ConnectionStringSlave,
    'm88-dbcluster-aurora-cluster.cluster-cz04mmi8y17a.ap-east-1.rds.amazonaws.com',
    '127.0.0.1'
);

-- change pwd
UPDATE MgPlatform.GeneralControlDbResource
SET ConnectionStringMaster = REPLACE(
    ConnectionStringMaster,
    'sL830>jS',
    '123'
),ConnectionStringSlave = REPLACE(
    ConnectionStringSlave,
    'sL830>jS',
    '123'
);


-- update security dataabse
UPDATE MgPlatform.Setting 
SET SettingValue = 'server=127.0.0.1;port=3306;uid=root;pwd=123;DataBase=MgSecurityControl;max pool size=5000;'
WHERE SettingKey = 'SecurityControlDbConnectionString'


-- udpate navigation table
UPDATE MgPlatform.Navigation
SET ConnectionStringMaster = 'server=127.0.0.1;uid=root;pwd=123;DataBase=MgNavigation1;max pool size=3000;'
    , ConnectionStringSlave = 'server=127.0.0.1;uid=root;pwd=123;DataBase=MgNavigation1;max pool size=3000;';



-- update mq
UPDATE MgPlatform.GeneralControlMessageQueueResource
SET HostName = REPLACE(
    HostName,
    'b-e7c568db-6dbf-4bac-85b1-1d88bbfd6ca6.mq.ap-east-1.amazonaws.com',
    '127.0.0.1'
);


-- udpate reids 
UPDATE MgPlatform.GeneralControlRedisResource
SET ConnectionString = REPLACE(
    ConnectionString,
    'm88-redis-i2tkht.serverless.ape1.cache.amazonaws.com',
    '127.0.0.1'
);


