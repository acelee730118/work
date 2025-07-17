-- 取得所有線路編號
SELECT * FROM MgPlatform.Setting
WHERE SettingKey = 'AgentLines'

-- 目前使用的 navigation code 所對應的站台是什麼
SELECT * FROM MgNavigation1.SafeCode
WHERE DomainName IS NOT NULL;
WHERE safecodevalue = 'vip222'

--把對應用到的 domain 改成 replica domain
UPDATE MgNavigation1.SafeCode
SET domainname = 'stg.mclubre.com'
WHERE safecodeId = 1;