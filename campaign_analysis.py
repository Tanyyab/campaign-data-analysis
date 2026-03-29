# Campaign Performance Analysis
# Analyses campaign data to find top performers and drop-off patterns

import csv

# Sample campaign data
data = [
    {"campaign": "Search", "conversions": 45, "revenue": 12000},
    {"campaign": "Display", "conversions": 23, "revenue": 8500},
    {"campaign": "Social", "conversions": 67, "revenue": 19200},
    {"campaign": "Email", "conversions": 31, "revenue": 9800},
]

# Find best performing campaign
best = max(data, key=lambda x: x["conversions"])
print(f"Best Campaign: {best['campaign']} with {best['conversions']} conversions")

# Total revenue
total = sum(d["revenue"] for d in data)
print(f"Total Revenue: {total}")
