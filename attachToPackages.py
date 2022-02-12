import os
import json

source_path = "./newStrings"
iOS_destination_folder = "./Sources/LocalizablePackage/Resources"
iOS_dest_file = "Localizable.strings"

android_destination = ""

for file_name in os.listdir(source_path):
    name_list = file_name.split(".")
    language = name_list[0]

    file_path = os.path.join(source_path, file_name)
    data = []
    with open(file_path) as file:
        data = json.load(file)
    
    # handle iOS 
    iOS_dest_path = os.path.join(iOS_destination_folder, language + ".lproj", iOS_dest_file)
    with open(iOS_dest_path, "a+") as file:
        # Move read cursor to the start of file.
        file.seek(0)
        # If file is not empty then append '\n'
        content = file.read(100)
        if len(content) > 0 :
            file.write("\n")

        # Append text at the end of file
        for item in data:
            comment = "/* " + item['comment'] + " */"
            key = "\"" + item['key'] + "\""
            value = "\"" + item['value'] + "\""
            line = comment + "\n" + key + " = " + value + ";\n"
            file.write(line)



    # handle Android
    for item in data:
        comment = "<!-- " + item['comment'] + " -->"
        key = item['key']
        value = item['value']
        line = comment + "\n" + "<string name=\"" + key + "\">" + value + "</string>\n"
        print(line)
