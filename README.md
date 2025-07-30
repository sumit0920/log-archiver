# Log Archiver 🗄️

A command-line tool to archive system log files on Unix-based systems by compressing them into timestamped `.tar.gz` files and storing them neatly for future reference.

# 🔗Project URL: 
```
https://roadmap.sh/projects/log-archive-tool
```
## 🔧 Features

- Accepts a log directory as a command-line argument
- Compresses logs into a `tar.gz` archive
- Stores archives in `$HOME/archived_logs`
- Logs each archive event with a timestamp

## 🚀 Usage

```
./log-archive.sh /var/log
```

This will create a file like:

```
~/archived_logs/logs_archive_20240816_100648.tar.gz
```

And log the action to:

```
~/archived_logs/archive_log.txt
```

Make the script executable:
    ```
    chmod +x log-archive.sh
    ```

## 🕰️ Automation (Optional)

To run this tool automatically, add it to `cron`:

```bash
crontab -e
```

Add a line like this to run daily at midnight:

```cron
0 0 * * * /path/to/log-archive.sh /var/log
```

👨‍💻 Author
Sumit Sharma

🔗 LinkedIn :- https://www.linkedin.com/in/sumitsharma-ss

🐦 X (Twitter) :- https://x.com/sumitsharma_95



## 🤝 Contributing

Got ideas to improve it? Fork the repo, make changes, and submit a pull request. Contributions welcome!

## 📜 License

This project is open-source.
```
