data<-read.csv(file.choose(),sep= ",",header = TRUE)
> data
   

# importing sample data of Elite Female Athletes Food Intake
      food
1   1658.4
2    837.7
3   1470.9
4   2376.9
5   3200.5
6   2853.3
7   2940.6
8   2751.8
9   1770.2
10  1759.0
11  3291.2
12  1619.0
13  1377.6
14  2915.9
15  1988.3
16  3032.3
17  2430.0
18  1517.4
19  2033.0
20  1985.7
21  2715.1
22  2565.8
23  2035.6
24  1251.5
25  2162.0
26  2662.5
27  3124.5
28  1676.3
29  1666.6
30  2386.5
31  2025.8
32  1507.9
33  1904.1
34  3573.4
35  1872.3
36  2916.3
37  2664.8
38  1695.5
39  2633.8
40  3041.2
41  1852.6
42  2075.1
43  3376.2
44  1024.0
45  2414.5
46  1616.8
47  2210.9
48  2410.4
49  2359.5
50  2341.3
51  3000.8
52  2593.6
53  1729.6
54  3214.8
55  1468.1
56  1818.1
57  1618.2
58  2006.9
59  2323.1
60  1906.6
61  3228.2
62  1587.6
63  2146.0
64  3111.7
65  2188.4
66  1682.7
67  3655.6
68  2705.5
69   773.9
70  2104.0
71   906.7
72  2076.8
73  2738.5
74  2556.6
75  2756.6
76  2524.8
77  3199.4
78  2804.9
79  2280.0
80  1120.6
81  1735.2
82  1545.7
83  2921.6
84   638.1
85  2464.9
86  2523.1
87  1762.4
88  1815.3
89  2350.1
90  3743.5
91  2846.3
92  2349.7
93  1385.4
94  2027.3
95  1466.5
96  2070.0
97  2312.3
98  1711.8
99  1953.9
100 2076.5
101 2910.6
102 3773.5
103 3148.0
104 3685.1
105 1309.6
106 2108.3
107 1827.3
108 1642.0
109 3255.4
110 2649.4
111 2713.6
112 3482.5
113 3128.0
114 2411.0
115 1384.6
116 3232.7
117 2737.6
118 2788.4
119 3748.6
120 2040.5
121 2483.0
122 2545.5
123  830.6
124 2702.4
125 1360.7
126 3551.0
127 2086.6
128 2076.4
129 2770.6
130 2254.2
131 2700.3
132 2837.8
133 3778.3
134 3821.9
135  701.5
136 3035.9
137 1753.1
138 2657.3
139 1659.8
140 3168.8
141 2013.5
142 1318.2
143 1359.5
144 2667.5
145 1600.3
146 1965.9
147 1192.8
148 3652.6
149 2372.0
150 2126.5
151 2998.3
152 1714.8
153 2490.6
154 1227.3
155 1108.4
156 2279.8
157 1745.5
158 2671.1
159 1587.3
160 1540.3
161 2979.7
162  909.4
163 2594.4
164 3002.0
165 2719.5
166 2906.3
167 2603.7
168 2275.0
169 1153.5
170 1757.2
171 1717.3
172 2360.0
173 1636.8
174 3480.0
175 2489.4
176 2274.7
177 3105.6
178 1032.0
179 2887.2
180 1423.6
181 2655.4
182 3356.1
183 2327.0
184 2263.1
185 1135.9
186 1657.4
187 2281.4
188 1191.2
189 1503.9
190 3589.4
191 1698.6
192 1632.5
193 1330.3
194 3095.6
195 2487.9
196 2187.0
197 2010.6
198 2431.7
199 2838.0
200 2394.3
201 2277.6

dim(data)
> [1] 201 1

# creating QQ Plots  
qqnorm(data$food)
> qqnorm(data$food,main = "Normal QQ Plot of Elite Female Athletes Food Intake")
> qqline(data$food)



# sample tests and observations
t.test(data$food)

  One Sample t-test

data:  data$food
t = 44.367, df = 200, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 2163.725 2365.003
sample estimates:
mean of x 
 2264.364 

t.test(data$food, mu=2812)

  One Sample t-test

data:  data$food
t = -10.73, df = 200, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 2812
95 percent confidence interval:
 2163.725 2365.003
sample estimates:
mean of x 
 2264.364 


# creating histogram
attach(data) 
hist(data$food)
hist(food, xlab = "Kilocalories of Food Intake (per Day)", ylab = "Frequency", main = "Histogram of Kilocalories of Food Intake Frequency of Female Elite Athletes", col = "lightblue")

# creating boxplots
attach(data$food) 
boxplot(data$food) 
boxplot(food, main = "Food Intake of Elite Athletes", ylab = "Kilocalories of Food Intake per Day", xlab = "Female Athletes", col = "Pink")


# calculating MMM and standard deviation

mean(A1Q2$food)

[1] 2264.364

median(A1Q2$food)

[1] 2279.8

sd(A1Q2$food)

[1] 723.5684
