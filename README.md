ase 1: First time – new repo me file push karna
📁 Step 1: Project folder me jao

    cd /path/to/your/project

🧾 Step 2: Git initialize karo
    
    git init

📄 Step 3: File add / create karo

    nano file.txt
(ya koi bhi file)

➕ Step 4: File staging me add karo

    git add file.txt
Ya sab files:

    git add .
📝 Step 5: Commit karo

    git commit -m "Initial commit"

🔗 Step 6: GitHub repo ko connect karo
(GitHub pe empty repo bana ke URL copy karo)

    git remote add origin https://github.com/Mwagh5022/devops-linux.git
Check:
    
    git remote -v
🚀 Step 7: Push to GitHub

    git branch -M project
    git push -u origin project
➡️ GitHub username + Personal Access Token (PAT) poochega (password nahi).

🔹 **Case 2: Existing repo me new file push karna**
    
    git status
    git add newfile.txt
    git commit -m "Added new file"
    git push

🔹 Authentication (IMPORTANT – GitHub 2025)
❌ Password allowed nahi
✅ Use Personal Access Token (PAT)

GitHub →
Settings → Developer settings → Personal access tokens → Generate token

**Interview One-Liner
To push files from Ubuntu to GitHub, we initialize git, add files to staging, commit changes, link remote repository, and push using HTTPS or SSH authentication.**

FIX 1: Personal Access Token (BEST & REQUIRED)
1️⃣ GitHub Portal
      
      GitHub → Settings
      → Developer settings
      → Personal access tokens
      → Tokens (classic)
      → Generate new token
2️⃣ Select the Permissions :

    ✔ repo
    ✔ workflow (optional)
3️⃣ Generate & Copy Token

4️⃣ Now push again
    
    git push -u origin project_1

👉 When Asked:

Username: Mwagh5022
Password: <PASTE TOKEN HERE>
