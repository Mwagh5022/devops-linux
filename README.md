Case 1: First time – file push to new repo
📁 Step 1: Open the Project Folder

    cd /path/to/your/project

🧾 Step 2: Now Git initialize
    
    git init

📄 Step 3: File add / create

    nano file.txt
(or any file)

➕ Step 4: Add to File staging

    git add file.txt
Or all files:

    git add .
📝 Step 5: Next Commit

    git commit -m "Initial commit"

🔗 Step 6: Now connect to GitHub repo
( Create a empty repo and copy the URL )

    git remote add origin https://github.com/Mwagh5022/devops-linux.git
Check:
    
    git remote -v
🚀 Step 7: Push to GitHub

    git branch -M project
    git push -u origin project
➡️ GitHub username + Personal Access Token (PAT) (not password).

🔹 **Case 2: Push New file to Existing repo**
    
    git status
    git add newfile.txt
    git commit -m "Added new file"
    git push

🔹 Authentication (IMPORTANT – GitHub 2025)
❌ Password not allowed 
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
