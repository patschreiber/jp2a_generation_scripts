 #!/bin/sh

input_file=$1

# 4 is standard. 24 feels good on larger canvas sizes
font_size=$2

# dont do fill --size param to keep proportions. 
# 240 feels good
width=$3

output_dir="../output/script-generated"
file_output_dir=$output_dir/$input_file

mkdir -p $file_output_dir

# options
jp2a --width=$width -i --html --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}_invert (font-size=${font_size})_${canvas_size}_${canvas_size}.html"
jp2a --width=$width --html --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file} (font-size=${font_size}) (font-size=${font_size})_${canvas_size}.html"                        

jp2a --width=$width --html --color --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}-script_color (font-size=${font_size})_${canvas_size}.html"
jp2a --width=$width --html --fill --color --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}-script_color_fill (font-size=${font_size})_${canvas_size}.html"
jp2a --width=$width -i --html --color --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}-script_invert_color (font-size=${font_size})_${canvas_size}.html"
jp2a --width=$width -i --html --fill --color --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}-script_invert_color_fill (font-size=${font_size})_${canvas_size}.html"

jp2a --width=$width --html --fill --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}-script_fill (font-size=${font_size})_${canvas_size}.html"
jp2a --width=$width -i --html --fill --html-fontsize=$font_size $input_file > "${file_output_dir}/${input_file}-script_invert_fill (font-size=${font_size})_${canvas_size}.html"
