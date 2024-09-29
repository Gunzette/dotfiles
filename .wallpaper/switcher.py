import os
from functools import cmp_to_key


def is_image(filename):
    if filename[-4:] == ".jpg" or filename[-4:] == ".png":
        return True
    else:
        return False


def sort_on_first_el(list1, list2):
    if int(list1[0]) < int(list2[0]):
        return -1
    elif int(list1[0]) > int(list2[0]):
        return 1
    else:
        return 0


def activate_wallpaper(filename):
    fpath = os.path.expanduser('~/.wallpaper/') + filename
    os.system(f"/usr/bin/hyprctl hyprpaper preload {fpath}")
    os.system(f"/usr/bin/hyprctl hyprpaper wallpaper , {fpath}")


def main():
    wallpaper_str_list = filter(is_image, os.listdir(
        os.path.expanduser("~/.wallpaper")))

    wallpaper_list = []
    for i in wallpaper_str_list:
        wallpaper_list.append(i.split("_"))

    wallpaper_list = sorted(wallpaper_list, key=cmp_to_key(sort_on_first_el))

    for i in wallpaper_list:
        print(f"{i[0]:<8} {i[1]}")

    input_str = input("Number: ")

    for i in wallpaper_list:
        if i[0] in input_str:
            selected_file = "_".join(i)
            break
    else:
        print("This wallpaper does not exist")
        exit(-1)

    activate_wallpaper(selected_file)


if __name__ == "__main__":
    main()
