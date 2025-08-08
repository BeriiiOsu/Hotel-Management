<h1><b>🏨 Hotel Management System</b></h1>
<br/>

## ⭐ Features
<details>
<summary><b>🚪 Secure Login</b></summary>
Implement login functionality for at least two user roles from the database.
</details>

<details>
<summary><b>🛏️ Room Management</b></summary>
Status: Upcoming<br/>
Set up different room types and their corresponding rates.
</details>

<details>
<summary><b>🧺 Service Add-ons</b></summary>
Status: Upcoming<br/>
Add services like Food and Laundry to guest bills.
</details>

<details>
<summary><b>🧑‍💼 User Roles & Access Control</b></summary>
Status: Upcoming<br/>
Define user roles (e.g., Front Desk, Admin) with specific permissions.
</details>

<details>
<summary><b>👥 Guest Management</b></summary>
Status: Upcoming<br/>
Handle Guest information (Add, Edit, View, Delete) for up to 50 records.
</details>

<details>
<summary><b>🔍 Guest Information Search</b></summary>
Status: Upcoming<br/>
Implement a search function to quickly find guest details.
</details>

<details>
<summary><b>🗓️ Reservations</b></summary>
Status: Upcoming<br/>
Create and manage guest reservations.
</details>

<details>
<summary><b>✅ Reservation Status Tracking</b></summary>
Status: Upcoming<br/>
Track reservation status: Pending, Confirmed, or Cancelled.
</details>

<details>
<summary><b>💰 Billing & Payments</b></summary>
Status: Upcoming<br/>
Handle guest billing and process payments.
</details>

<details>
<summary><b>🔑 Check-in / Check-out</b></summary>
Status: Upcoming<br/>
Manage the guest check-in and check-out process.
</details>
<br>

<h1><b>🛠️ Advanced Requirements</b></h1>
<details>
<summary><b>🗄️ Database & Security</b></summary>
Status: Upcoming <br/>
Stored Procedures: Implement database stored procedures. (partially implemented) <br/>
Database Views: Create optimized database views. (partially implemented) <br/>
Transactions: Ensure data integrity with database transactions and rollbacks. <br/>
Configuration: Store database connection strings securely in a configuration file. — Status: Done <br/>
</details>

<details>
<summary><b>📝 Logging</b></summary>
Status: Upcoming<br/>
Log Files: Save application logs to a text file for debugging and monitoring.
</details>

<details>
  <summary><b>📦 Dependencies</b></summary>
  - Guna.UI2.WinForms (version 2.0.4.7) <br/>
  - .NET Framework (4.8) <br/>
  - SQL Server (Express/Developer)
</details>

---

## 🚀 Getting Started
### Prerequisites
- Visual Studio 2022 (Windows Forms)
- .NET Framework 4.8
- SQL Server and SQL Server Management Studio

### Installation
1. Clone the repository and open `Hotel Management.sln` in Visual Studio.
2. Install NuGet packages:
   - Guna.UI2.WinForms (v2.0.4.7)
3. Configure the database connection string:
   - Update the `App.config` to point to your SQL Server instance/database.
4. Prepare the database:
   - Create the database and required tables/stored procedures.
   - The database script is available, run it in SQL Server (see `Utils/Misc/Scripts` folder).
5. Set `Hotel Management` as the startup project and run (F5).

---

## 🧰 Tech Stack
- Windows Forms (.NET Framework)
- C#
- SQL Server
- Guna.UI2.WinForms for modern UI components

---

## 📂 Project Structure

```
Hotel Management/
  App.config
  Database/
    ConnectionDB.cs
  Login/
    LoginForm.cs
    LoginForm.Designer.cs
    LoginForm.resx
  Models/
    Users.cs
  Program.cs
  Properties/
    Resources.resx
    Settings.settings
  Resources/
    flat-hotel.jpg
  Utils/
    Misc/
      Scripts/
    CurrentUser.cs
```

---

## 📷 Screenshots
Login (UI cleanup in progress):

![Login](https://github.com/user-attachments/assets/f81dd7ed-c21e-4836-85ed-18eadd3f77e2) 
