col_name = read.table('./../household_power_consumption.txt', sep = ';', nrows = 1)
"col_name
V1   V2                  V3                    V4      V5
1 Date Time Global_active_power Global_reactive_power Voltage
V6             V7             V8             V9
1 Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3"

df = read.table('./../household_power_consumption.txt', sep = ';', skip = 1, col.names = col_name)
head(df)
"Date     Time Global_active_power Global_reactive_power
1 16/12/2006 17:24:00               4.216                 0.418
2 16/12/2006 17:25:00               5.360                 0.436
..."

dim(df)
"[1] 2075259       9"
names(df)
"[1] 'Date'                  'Time'                 
[3] 'Global_active_power'   'Global_reactive_power'
[5] 'Voltage'               'Global_intensity'     
[7] 'Sub_metering_1'        'Sub_metering_2'       
[9] 'Sub_metering_3'    "

df[,'Date'] = as.Date(df[,'Date'], format = '%d/%m/%Y')
head(df['Date'])
"Date
1 2006-12-16
2 2006-12-16
3 2006-12-16
4 2006-12-16
5 2006-12-16
6 2006-12-16"

df1 = df[df[,'Date'] >= as.Date('01-02-2007', format = '%d-%m-%Y') & df[,'Date'] <= as.Date('02-02-2007', format='%d-%m-%Y'),]
dim(df1)
"[1] 2880    9"











