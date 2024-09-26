

install_edge_extension () {
  preferences_dir_path="/opt/microsoft/msedge/extensions"
  pref_file_path="$preferences_dir_path/$1.json"
  upd_url="https://clients2.google.com/service/update2/crx"

  sudo mkdir -p "$preferences_dir_path"
  echo "{" | sudo tee "$pref_file_path"
  echo "  \"external_update_url\": \"$upd_url\"" | sudo tee -a "$pref_file_path"
  echo "}" | sudo tee -a "$pref_file_path"
  echo Added \""$pref_file_path"\" ["$2"]

}


install_edge_extension "nngceckbapebfimnlniiiahkandclblb" "Bitwarden Password Manager"
