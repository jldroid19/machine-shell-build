# app_is_installed 


```
# Function to check if an application is installed
app_is_installed() {
    if command -v "$1" >/dev/null 2>%1; then
        return 0
    else
        return 1
    fi
}
```

Next we'll create the 