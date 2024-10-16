
#!/bin/bash
# Get the list of running applications for the current workspace
app_count=$(i3-msg -t get_tree | jq -r '
    recurse(.nodes[])
    | select(.type=="con" and .window_properties != null)
    | select(.window_properties.instance != null)
    | select(.window_properties.class != null)
    | select(.window_properties.title != null)
    | .window_properties.title
    ' | wc -l)

echo "$app_count"

