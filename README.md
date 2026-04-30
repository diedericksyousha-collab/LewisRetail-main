# Retail Store API & Database Testing Project (Training Simulation)

## Overview

This project was completed as part of a **career sprint training program**, where I worked with a simulated retail system to practice real-world QA testing techniques.

The goal was to test a retail store’s **API and database interactions**, ensuring that business rules, calculations, and data consistency were handled correctly.

Although the data is simulated, the **testing approach, tools, and techniques reflect real industry practices**.

---

## Objectives

* Validate API responses and status codes
* Test business logic such as pricing and discounts
* Ensure consistency between API responses and database records
* Identify and highlight defects or discrepancies

---

## Tools & Technologies

* Postman (API testing)
* JavaScript (Postman test automation)
* SQL (database validation)
* REST APIs
* Git & GitHub

---

## What Was Tested

### 1. API Testing

* Verified **status codes** (e.g., 200 OK)
* Validated **response structure and required fields**
* Tested **discount logic for premium customers**
* Checked how the system handles **invalid or unexpected inputs**

---

### 2. Automation (Postman Test Scripts)

Example:

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

pm.test("Response contains discountAmount", function () {
    const res = pm.response.json();
    pm.expect(res).to.have.property("discountAmount");
});
```

✔ Automated validation of responses
✔ Reduced manual testing effort
✔ Ensured repeatable test execution

---

### 3. Database Validation (SQL)

Example query used:

```sql
SELECT *
FROM Orders
WHERE TotalAmount <> (UnitPrice * Quantity - DiscountAmount + VATAmount);
```

✔ Identified discrepancies in calculations
✔ Verified data integrity between API and database
✔ Ensured business rules were correctly applied

---

## Testing Approach

1. Send API requests using Postman
2. Validate responses using automated scripts
3. Query the database using SQL
4. Compare API results with database values
5. Identify mismatches and potential defects

---

## Key Skills Demonstrated

* API testing and validation
* Writing automated test scripts
* SQL data validation
* Understanding business logic (pricing, discounts)
* Attention to detail and defect identification

---

## Note

This project was completed in a **training environment** using simulated data as part of a structured learning program.
However, the testing methods and practices used are aligned with real-world QA workflows.

---

## Future Improvements

* Expand automated test coverage
* Add negative and edge case scenarios
* Integrate with a CI/CD pipeline
* Improve reporting and documentation

---

## Author

**Moegamat Yousha Diedericks**
Aspiring QA Engineer & Developer
