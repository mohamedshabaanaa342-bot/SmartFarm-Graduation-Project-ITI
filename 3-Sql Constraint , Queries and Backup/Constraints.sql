ALTER TABLE Zone ALTER COLUMN zone_id INT NOT NULL;
ALTER TABLE Department ALTER COLUMN dept_id INT NOT NULL;
ALTER TABLE Customer ALTER COLUMN customer_id INT NOT NULL;
ALTER TABLE Supplier ALTER COLUMN supplier_id INT NOT NULL;
ALTER TABLE Resource ALTER COLUMN resource_id INT NOT NULL;
ALTER TABLE Greenhouse ALTER COLUMN greenhouse_id INT NOT NULL;
ALTER TABLE Aquarium ALTER COLUMN aquarium_id INT NOT NULL;
ALTER TABLE Employee ALTER COLUMN employee_id INT NOT NULL;
ALTER TABLE Crop ALTER COLUMN crop_id INT NOT NULL;
ALTER TABLE Sensor ALTER COLUMN sensor_id INT NOT NULL;
ALTER TABLE Cattle ALTER COLUMN cattle_id INT NOT NULL;
ALTER TABLE Poultry ALTER COLUMN poultry_id INT NOT NULL;
ALTER TABLE Fish ALTER COLUMN fish_id INT NOT NULL;
ALTER TABLE Sensor_Zone ALTER COLUMN sensor_zone_id INT NOT NULL;
ALTER TABLE Employee_Zone ALTER COLUMN employee_zone_id INT NOT NULL;
ALTER TABLE SensorCrop ALTER COLUMN sensor_crop_id INT NOT NULL;
ALTER TABLE SensorAquarium ALTER COLUMN sensor_aquarium_id INT NOT NULL;
ALTER TABLE SensorReading ALTER COLUMN reading_id INT NOT NULL;
ALTER TABLE Alert ALTER COLUMN alert_id INT NOT NULL;
ALTER TABLE Recommendation ALTER COLUMN rec_id INT NOT NULL;
ALTER TABLE ActionLog ALTER COLUMN log_id INT NOT NULL;
ALTER TABLE Soil_Sensors_Log ALTER COLUMN reading_id INT NOT NULL;
ALTER TABLE Environment_Sensors_Log ALTER COLUMN log_id INT NOT NULL;
ALTER TABLE Weather ALTER COLUMN weather_id INT NOT NULL;
ALTER TABLE Crop_Yield_Log ALTER COLUMN record_id INT NOT NULL;
ALTER TABLE Harvest ALTER COLUMN harvest_id INT NOT NULL;
ALTER TABLE Irrigation_Log ALTER COLUMN irr_id INT NOT NULL;
ALTER TABLE Poultry_Logs ALTER COLUMN egg_log_id INT NOT NULL;
ALTER TABLE Fish_Health_Log ALTER COLUMN health_log_id INT NOT NULL;
ALTER TABLE Animal_Medicine ALTER COLUMN med_id INT NOT NULL;
ALTER TABLE Resource_Crop ALTER COLUMN resource_crop_id INT NOT NULL;
ALTER TABLE Resource_Fish ALTER COLUMN resource_fish_id INT NOT NULL;
ALTER TABLE Resource_Poultry ALTER COLUMN resource_poultry_id INT NOT NULL;
ALTER TABLE Resource_Cattle ALTER COLUMN resource_cattle_id INT NOT NULL;
ALTER TABLE Supplier_Resource ALTER COLUMN supplier_resource_id INT NOT NULL;
ALTER TABLE Orders ALTER COLUMN order_id INT NOT NULL;
ALTER TABLE Order_Items ALTER COLUMN item_id INT NOT NULL;
ALTER TABLE Offers ALTER COLUMN offer_id INT NOT NULL;
ALTER TABLE Purchase ALTER COLUMN purchase_id INT NOT NULL;

-- primary key
ALTER TABLE Zone ADD CONSTRAINT PK_Zone PRIMARY KEY (zone_id);
ALTER TABLE Department ADD CONSTRAINT PK_Department PRIMARY KEY (dept_id);
ALTER TABLE Customer ADD CONSTRAINT PK_Customer PRIMARY KEY (customer_id);
ALTER TABLE Supplier ADD CONSTRAINT PK_Supplier PRIMARY KEY (supplier_id);
ALTER TABLE Resource ADD CONSTRAINT PK_Resource PRIMARY KEY (resource_id);
ALTER TABLE Greenhouse ADD CONSTRAINT PK_Greenhouse PRIMARY KEY (greenhouse_id);
ALTER TABLE Aquarium ADD CONSTRAINT PK_Aquarium PRIMARY KEY (aquarium_id);
ALTER TABLE Employee ADD CONSTRAINT PK_Employee PRIMARY KEY (employee_id);
ALTER TABLE Crop ADD CONSTRAINT PK_Crop PRIMARY KEY (crop_id);
ALTER TABLE Sensor ADD CONSTRAINT PK_Sensor PRIMARY KEY (sensor_id);
ALTER TABLE Cattle ADD CONSTRAINT PK_Cattle PRIMARY KEY (cattle_id);
ALTER TABLE Poultry ADD CONSTRAINT PK_Poultry PRIMARY KEY (poultry_id);
ALTER TABLE Fish ADD CONSTRAINT PK_Fish PRIMARY KEY (fish_id);
ALTER TABLE Sensor_Zone ADD CONSTRAINT PK_Sensor_Zone PRIMARY KEY (sensor_zone_id);
ALTER TABLE Employee_Zone ADD CONSTRAINT PK_Employee_Zone PRIMARY KEY (employee_zone_id);
ALTER TABLE SensorCrop ADD CONSTRAINT PK_SensorCrop PRIMARY KEY (sensor_crop_id);
ALTER TABLE SensorAquarium ADD CONSTRAINT PK_SensorAquarium PRIMARY KEY (sensor_aquarium_id);
ALTER TABLE SensorReading ADD CONSTRAINT PK_SensorReading PRIMARY KEY (reading_id);
ALTER TABLE Alert ADD CONSTRAINT PK_Alert PRIMARY KEY (alert_id);
ALTER TABLE Recommendation ADD CONSTRAINT PK_Recommendation PRIMARY KEY (rec_id);
ALTER TABLE ActionLog ADD CONSTRAINT PK_ActionLog PRIMARY KEY (log_id);
ALTER TABLE Soil_Sensors_Log ADD CONSTRAINT PK_Soil_Sensors_Log PRIMARY KEY (reading_id);
ALTER TABLE Environment_Sensors_Log ADD CONSTRAINT PK_Environment_Sensors_Log PRIMARY KEY (log_id);
ALTER TABLE Weather ADD CONSTRAINT PK_Weather PRIMARY KEY (weather_id);
ALTER TABLE Crop_Yield_Log ADD CONSTRAINT PK_Crop_Yield_Log PRIMARY KEY (record_id);
ALTER TABLE Harvest ADD CONSTRAINT PK_Harvest PRIMARY KEY (harvest_id);
ALTER TABLE Irrigation_Log ADD CONSTRAINT PK_Irrigation_Log PRIMARY KEY (irr_id);
ALTER TABLE Poultry_Logs ADD CONSTRAINT PK_Poultry_Logs PRIMARY KEY (egg_log_id);
ALTER TABLE Fish_Health_Log ADD CONSTRAINT PK_Fish_Health_Log PRIMARY KEY (health_log_id);
ALTER TABLE Animal_Medicine ADD CONSTRAINT PK_Animal_Medicine PRIMARY KEY (med_id);
ALTER TABLE Resource_Crop ADD CONSTRAINT PK_Resource_Crop PRIMARY KEY (resource_crop_id);
ALTER TABLE Resource_Fish ADD CONSTRAINT PK_Resource_Fish PRIMARY KEY (resource_fish_id);
ALTER TABLE Resource_Poultry ADD CONSTRAINT PK_Resource_Poultry PRIMARY KEY (resource_poultry_id);
ALTER TABLE Resource_Cattle ADD CONSTRAINT PK_Resource_Cattle PRIMARY KEY (resource_cattle_id);
ALTER TABLE Supplier_Resource ADD CONSTRAINT PK_Supplier_Resource PRIMARY KEY (supplier_resource_id);
ALTER TABLE Orders ADD CONSTRAINT PK_Orders PRIMARY KEY (order_id);
ALTER TABLE Order_Items ADD CONSTRAINT PK_Order_Items PRIMARY KEY (item_id);
ALTER TABLE Offers ADD CONSTRAINT PK_Offers PRIMARY KEY (offer_id);
ALTER TABLE Purchase ADD CONSTRAINT PK_Purchase PRIMARY KEY (purchase_id);

--CHECK & UNIQUE CONSTRAINTS

--Zone
ALTER TABLE Zone ADD CONSTRAINT CHK_Zone_Type CHECK (zone_type IN ('Greenhouse', 'Aquaculture', 'Livestock', 'Mixed'));

-- Customer
ALTER TABLE Customer ADD CONSTRAINT CHK_Customer_Type CHECK (customer_type IN ('Retail', 'Wholesale', 'Restaurant', 'Distributor'));
ALTER TABLE Customer ADD CONSTRAINT UQ_Customer_Email UNIQUE (email);

-- Supplier
ALTER TABLE Supplier ADD CONSTRAINT CHK_Supplier_Rating CHECK (rating >= 1.0 AND rating <= 5.0);

-- Resource
ALTER TABLE Resource ADD CONSTRAINT CHK_Resource_Type CHECK (resource_type IN ('Feed', 'Fertilizer', 'Seed', 'Medicine', 'Tool'));

-- Greenhouse
ALTER TABLE Greenhouse ADD CONSTRAINT CHK_Greenhouse_Status CHECK (status IN ('Active', 'Idle', 'Maintenance'));

-- Aquarium
ALTER TABLE Aquarium ADD CONSTRAINT CHK_Aquarium_WaterType CHECK (water_type IN ('Freshwater', 'Saltwater', 'Brackish'));
ALTER TABLE Aquarium ADD CONSTRAINT CHK_Aquarium_Status CHECK (status IN ('Active', 'Idle', 'Maintenance'));

-- Crop
ALTER TABLE Crop ADD CONSTRAINT CHK_Crop_GrowthStage CHECK (growth_stage IN ('Seedling', 'Vegetative', 'Flowering', 'Fruiting', 'Harvested'));

-- Sensor
ALTER TABLE Sensor ADD CONSTRAINT UQ_Sensor_Serial UNIQUE (serial_number);
ALTER TABLE Sensor ADD CONSTRAINT CHK_Sensor_Type CHECK (sensor_type IN ('EnvSensor', 'SoilSensor', 'WaterSensor', 'MultiSensor'));
ALTER TABLE Sensor ADD CONSTRAINT CHK_Sensor_Status CHECK (status IN ('Active', 'Inactive', 'Faulty'));

-- Cattle
ALTER TABLE Cattle ADD CONSTRAINT CHK_Cattle_HealthStage CHECK (health_stage IN ('Healthy', 'Under Observation', 'Sick'));
ALTER TABLE Cattle ADD CONSTRAINT CHK_Cattle_Status CHECK (status IN ('Active', 'Sold', 'Quarantined'));

-- Poultry
ALTER TABLE Poultry ADD CONSTRAINT CHK_Poultry_Purpose CHECK (purpose IN ('Eggs', 'Meat'));
ALTER TABLE Poultry ADD CONSTRAINT CHK_Poultry_FlockSize CHECK (flock_size >= 0);

-- Fish
ALTER TABLE Fish ADD CONSTRAINT CHK_Fish_Type CHECK (fish_type IN ('Fingerling', 'Juvenile', 'Adult'));
ALTER TABLE Fish ADD CONSTRAINT CHK_Fish_HealthStatus CHECK (health_status IN ('Healthy', 'Under Treatment', 'Sick'));

-- SensorReading
ALTER TABLE SensorReading ADD CONSTRAINT CHK_SensorReading_Anomaly CHECK (is_anomaly IN (0, 1));

-- Alert
ALTER TABLE Alert ADD CONSTRAINT CHK_Alert_Type CHECK (alert_type IN ('Temperature', 'Humidity', 'Soil', 'Water', 'Equipment'));
ALTER TABLE Alert ADD CONSTRAINT CHK_Alert_Severity CHECK (severity IN ('Low', 'Medium', 'High', 'Critical'));
ALTER TABLE Alert ADD CONSTRAINT CHK_Alert_Status CHECK (status IN ('new', 'In Progress', 'Resolved'));

-- Recommendation
ALTER TABLE Recommendation ADD CONSTRAINT CHK_Recommendation_Priority CHECK (priority IN ('P1', 'P2', 'P3'));

-- Poultry_Logs
ALTER TABLE Poultry_Logs ADD CONSTRAINT CHK_PoultryLogs_Eggs CHECK (eggs_collected >= 0);

-- Animal_Medicine
ALTER TABLE Animal_Medicine ADD CONSTRAINT CHK_AnimalMedicine_Type CHECK (animal_type IN ('Cattle', 'Poultry', 'Fish'));

-- Orders
ALTER TABLE Orders ADD CONSTRAINT CHK_Orders_Status CHECK (status IN ('pending', 'Paid', 'Shipped', 'Delivered'));

-- Order_Items
ALTER TABLE Order_Items ADD CONSTRAINT CHK_OrderItems_ProductType CHECK (product_type IN ('Crop', 'Livestock', 'Poultry', 'Fish'));
ALTER TABLE Order_Items ADD CONSTRAINT CHK_OrderItems_Quantity CHECK (quantity > 0);

-- Offers
ALTER TABLE Offers ADD CONSTRAINT CHK_Offers_Discount CHECK (discount_pct >= 0 AND discount_pct <= 100);


--Edit Data Type For Primary Key

-- تعديل الأعمدة في جدول Greenhouse والـ Aquarium
ALTER TABLE Greenhouse ALTER COLUMN zone_id INT;
ALTER TABLE Aquarium ALTER COLUMN zone_id INT;

-- تعديل الأعمدة في جدول Employee والمحاصيل والماشية والدواجن
ALTER TABLE Employee ALTER COLUMN dept_id INT;
ALTER TABLE Crop ALTER COLUMN zone_id INT;
ALTER TABLE Crop ALTER COLUMN greenhouse_id INT;
ALTER TABLE Cattle ALTER COLUMN zone_id INT;
ALTER TABLE Poultry ALTER COLUMN zone_id INT;

-- تعديل الأعمدة في جدول الأسماك وجداول الروابط (Sensors)
ALTER TABLE Fish ALTER COLUMN aquarium_id INT;
ALTER TABLE Sensor_Zone ALTER COLUMN sensor_id INT;
ALTER TABLE Sensor_Zone ALTER COLUMN zone_id INT;
ALTER TABLE Employee_Zone ALTER COLUMN employee_id INT;
ALTER TABLE Employee_Zone ALTER COLUMN zone_id INT;
ALTER TABLE SensorCrop ALTER COLUMN sensor_id INT;
ALTER TABLE SensorCrop ALTER COLUMN crop_id INT;
ALTER TABLE SensorAquarium ALTER COLUMN sensor_id INT;
ALTER TABLE SensorAquarium ALTER COLUMN aquarium_id INT;

-- تعديل الأعمدة في جداول القراءات والتنبيهات
ALTER TABLE SensorReading ALTER COLUMN sensor_id INT;
ALTER TABLE Alert ALTER COLUMN sensor_reading_id INT;
ALTER TABLE Alert ALTER COLUMN assigned_employee_id INT;
ALTER TABLE Recommendation ALTER COLUMN alert_id INT;
ALTER TABLE ActionLog ALTER COLUMN alert_id INT;
ALTER TABLE ActionLog ALTER COLUMN employee_id INT;

-- تعديل الأعمدة في جداول السجلات والطقس والحصاد
--ALTER TABLE Soil_Sensors_Log ALTER COLUMN zone_id INT;
--ALTER TABLE Soil_Sensors_Log ALTER COLUMN crop_id INT;
ALTER TABLE Environment_Sensors_Log ALTER COLUMN zone_id INT;
ALTER TABLE Weather ALTER COLUMN zone_id INT;
ALTER TABLE Crop_Yield_Log ALTER COLUMN zone_id INT;
ALTER TABLE Crop_Yield_Log ALTER COLUMN supplier_id INT;
ALTER TABLE Harvest ALTER COLUMN crop_id INT;
ALTER TABLE Irrigation_Log ALTER COLUMN crop_id INT;
ALTER TABLE Poultry_Logs ALTER COLUMN zone_id INT;
ALTER TABLE Poultry_Logs ALTER COLUMN poultry_id INT;
ALTER TABLE Fish_Health_Log ALTER COLUMN fish_id INT;
ALTER TABLE Fish_Health_Log ALTER COLUMN aquarium_id INT;

-- تعديل أعمدة استهلاك الموارد والموردين
ALTER TABLE Resource_Crop ALTER COLUMN resource_id INT;
ALTER TABLE Resource_Crop ALTER COLUMN crop_id INT;
ALTER TABLE Resource_Fish ALTER COLUMN resource_id INT;
ALTER TABLE Resource_Fish ALTER COLUMN fish_id INT;
ALTER TABLE Resource_Poultry ALTER COLUMN resource_id INT;
ALTER TABLE Resource_Poultry ALTER COLUMN poultry_id INT;
ALTER TABLE Resource_Cattle ALTER COLUMN resource_id INT;
ALTER TABLE Resource_Cattle ALTER COLUMN cattle_id INT;
ALTER TABLE Supplier_Resource ALTER COLUMN supplier_id INT;
ALTER TABLE Supplier_Resource ALTER COLUMN resource_id INT;

-- تعديل أعمدة الطلبات والمبيعات والمشتريات
ALTER TABLE Orders ALTER COLUMN customer_id INT;
ALTER TABLE Order_Items ALTER COLUMN order_id INT;
ALTER TABLE Offers ALTER COLUMN order_id INT;
ALTER TABLE Purchase ALTER COLUMN supplier_id INT;

--FOREIGN KEYS
-------------------------------------------------------------------------------
ALTER TABLE Greenhouse ADD CONSTRAINT FK_Greenhouse_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Aquarium ADD CONSTRAINT FK_Aquarium_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Employee ADD CONSTRAINT FK_Employee_Dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id) ON DELETE SET NULL;

ALTER TABLE Crop ADD CONSTRAINT FK_Crop_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id);
ALTER TABLE Crop ADD CONSTRAINT FK_Crop_Greenhouse FOREIGN KEY (greenhouse_id) REFERENCES Greenhouse(greenhouse_id) ON DELETE CASCADE;

ALTER TABLE Cattle ADD CONSTRAINT FK_Cattle_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Poultry ADD CONSTRAINT FK_Poultry_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Fish ADD CONSTRAINT FK_Fish_Aquarium FOREIGN KEY (aquarium_id) REFERENCES Aquarium(aquarium_id) ON DELETE CASCADE;

ALTER TABLE Sensor_Zone ADD CONSTRAINT FK_SensorZone_Sensor FOREIGN KEY (sensor_id) REFERENCES Sensor(sensor_id) ON DELETE CASCADE;
ALTER TABLE Sensor_Zone ADD CONSTRAINT FK_SensorZone_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Employee_Zone ADD CONSTRAINT FK_EmpZone_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE;
ALTER TABLE Employee_Zone ADD CONSTRAINT FK_EmpZone_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE SensorCrop ADD CONSTRAINT FK_SensorCrop_Sensor FOREIGN KEY (sensor_id) REFERENCES Sensor(sensor_id) ON DELETE CASCADE;
ALTER TABLE SensorCrop ADD CONSTRAINT FK_SensorCrop_Crop FOREIGN KEY (crop_id) REFERENCES Crop(crop_id) ON DELETE CASCADE;

ALTER TABLE SensorAquarium ADD CONSTRAINT FK_SensorAquarium_Sensor FOREIGN KEY (sensor_id) REFERENCES Sensor(sensor_id) ON DELETE CASCADE;
ALTER TABLE SensorAquarium ADD CONSTRAINT FK_SensorAquarium_Aquarium FOREIGN KEY (aquarium_id) REFERENCES Aquarium(aquarium_id) ON DELETE CASCADE;

ALTER TABLE SensorReading ADD CONSTRAINT FK_SensorReading_Sensor FOREIGN KEY (sensor_id) REFERENCES Sensor(sensor_id) ON DELETE CASCADE;

ALTER TABLE Alert ADD CONSTRAINT FK_Alert_Reading FOREIGN KEY (sensor_reading_id) REFERENCES SensorReading(reading_id) ON DELETE CASCADE;
ALTER TABLE Alert ADD CONSTRAINT FK_Alert_Employee FOREIGN KEY (assigned_employee_id) REFERENCES Employee(employee_id) ON DELETE SET NULL;

ALTER TABLE Recommendation ADD CONSTRAINT FK_Rec_Alert FOREIGN KEY (alert_id) REFERENCES Alert(alert_id) ON DELETE CASCADE;

ALTER TABLE ActionLog ADD CONSTRAINT FK_ActionLog_Alert FOREIGN KEY (alert_id) REFERENCES Alert(alert_id) ON DELETE CASCADE;
ALTER TABLE ActionLog ADD CONSTRAINT FK_ActionLog_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE SET NULL;

ALTER TABLE Environment_Sensors_Log ADD CONSTRAINT FK_EnvLog_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Weather ADD CONSTRAINT FK_Weather_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id) ON DELETE CASCADE;

ALTER TABLE Crop_Yield_Log ADD CONSTRAINT FK_YieldLog_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id);
ALTER TABLE Crop_Yield_Log ADD CONSTRAINT FK_YieldLog_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id) ON DELETE SET NULL;

ALTER TABLE Harvest ADD CONSTRAINT FK_Harvest_Crop FOREIGN KEY (crop_id) REFERENCES Crop(crop_id) ON DELETE CASCADE;

ALTER TABLE Irrigation_Log ADD CONSTRAINT FK_Irrigation_Crop FOREIGN KEY (crop_id) REFERENCES Crop(crop_id) ON DELETE CASCADE;

ALTER TABLE Poultry_Logs ADD CONSTRAINT FK_PoultryLogs_Zone FOREIGN KEY (zone_id) REFERENCES Zone(zone_id);
ALTER TABLE Poultry_Logs ADD CONSTRAINT FK_PoultryLogs_Poultry FOREIGN KEY (poultry_id) REFERENCES Poultry(poultry_id) ON DELETE CASCADE;

ALTER TABLE Fish_Health_Log ADD CONSTRAINT FK_FishHealth_Fish FOREIGN KEY (fish_id) REFERENCES Fish(fish_id) ON DELETE CASCADE;
ALTER TABLE Fish_Health_Log ADD CONSTRAINT FK_FishHealth_Aquarium FOREIGN KEY (aquarium_id) REFERENCES Aquarium(aquarium_id);

ALTER TABLE Resource_Crop ADD CONSTRAINT FK_ResCrop_Resource FOREIGN KEY (resource_id) REFERENCES Resource(resource_id) ON DELETE CASCADE;
ALTER TABLE Resource_Crop ADD CONSTRAINT FK_ResCrop_Crop FOREIGN KEY (crop_id) REFERENCES Crop(crop_id) ON DELETE CASCADE;

ALTER TABLE Resource_Fish ADD CONSTRAINT FK_ResFish_Resource FOREIGN KEY (resource_id) REFERENCES Resource(resource_id) ON DELETE CASCADE;
ALTER TABLE Resource_Fish ADD CONSTRAINT FK_ResFish_Fish FOREIGN KEY (fish_id) REFERENCES Fish(fish_id) ON DELETE CASCADE;

ALTER TABLE Resource_Poultry ADD CONSTRAINT FK_ResPoultry_Resource FOREIGN KEY (resource_id) REFERENCES Resource(resource_id) ON DELETE CASCADE;
ALTER TABLE Resource_Poultry ADD CONSTRAINT FK_ResPoultry_Poultry FOREIGN KEY (poultry_id) REFERENCES Poultry(poultry_id) ON DELETE CASCADE;

ALTER TABLE Resource_Cattle ADD CONSTRAINT FK_ResCattle_Resource FOREIGN KEY (resource_id) REFERENCES Resource(resource_id) ON DELETE CASCADE;
ALTER TABLE Resource_Cattle ADD CONSTRAINT FK_ResCattle_Cattle FOREIGN KEY (cattle_id) REFERENCES Cattle(cattle_id) ON DELETE CASCADE;

ALTER TABLE Supplier_Resource ADD CONSTRAINT FK_SupRes_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id) ON DELETE CASCADE;
ALTER TABLE Supplier_Resource ADD CONSTRAINT FK_SupRes_Resource FOREIGN KEY (resource_id) REFERENCES Resource(resource_id) ON DELETE CASCADE;

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE SET NULL;

ALTER TABLE Order_Items ADD CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE;

ALTER TABLE Offers ADD CONSTRAINT FK_Offers_Orders FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE;
ALTER TABLE Purchase ADD CONSTRAINT FK_Purchase_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id) ON DELETE SET NULL;




ALTER TABLE Animal_Medicine ALTER COLUMN animal_id INT;

-- 1. إضافة الأعمدة الثلاثة الجديدة لجدول Animal_Medicine
ALTER TABLE Animal_Medicine
ADD cattle_id INT NULL,
    fish_id INT NULL,
    poultry_id INT NULL;
GO

-- 2. نقل البيانات من العمود القديم (animal_id) إلى الأعمدة الجديدة بناءً على نوع الحيوان (animal_type)
-- نقل بيانات الماشية
UPDATE Animal_Medicine
SET cattle_id = animal_id
WHERE animal_type = 'Cattle';

-- نقل بيانات الأسماك
UPDATE Animal_Medicine
SET fish_id = animal_id
WHERE animal_type = 'Fish';

-- نقل بيانات الدواجن
UPDATE Animal_Medicine
SET poultry_id = animal_id
WHERE animal_type = 'Poultry';
GO

-- 3. مسح العمود الأصلي القديم (animal_id) بعد التأكد من نقل كافة البيانات بنجاح
ALTER TABLE Animal_Medicine
DROP COLUMN animal_id;
GO

-- 4. الآن بناء العلاقات (Foreign Keys) مع الجداول الثلاثة الأساسية بأمان تام وبدون أي Conflicts
-- ربط جدول الأدوية بجدول المواشي
ALTER TABLE Animal_Medicine
ADD CONSTRAINT FK_AnimalMedicine_Cattle
FOREIGN KEY (cattle_id) REFERENCES Cattle(cattle_id)

-- ربط جدول الأدوية بجدول الأسماك (تأكد من أن اسم الجدول والعمود الأساسي للأسماك مطابقين لديك)
ALTER TABLE Animal_Medicine
ADD CONSTRAINT FK_AnimalMedicine_Fish
FOREIGN KEY (fish_id) REFERENCES Fish(fish_id)

-- ربط جدول الأدوية بجدول الدواجن
ALTER TABLE Animal_Medicine
ADD CONSTRAINT FK_AnimalMedicine_Poultry
FOREIGN KEY (poultry_id) REFERENCES Poultry(poultry_id)


ALTER TABLE Soil_Sensors_Log ALTER COLUMN sensor_id INT
Alter table Soil_Sensors_Log add constraint FK_Soil_Sensor foreign key (sensor_id) references Sensor(sensor_id)