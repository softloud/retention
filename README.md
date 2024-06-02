# Retention

`Retention` is an R package that contains datasets related to user
activity, user details, and build versions. These datasets can be used
for analyses such as user retention, activity patterns, and the impact
of different build versions on user activity.

It has functions for simulating builds, users, and activity data, each
of which is customisable to control scale of data output.

## Installation

You can install the `Retention` package from GitHub using the `devtools`
package. Run the following commands in your R console:

    # Install devtools if you haven't already
    if (!require(devtools)) {
      install.packages("devtools")
    }

    # Install the Retention package from GitHub
    devtools::install_github("softloud/retention")

## Using the package

    library(retention)

## Data

The data in this package was generated using the
`simulate_retention_data.R` script. The datasets are stored as RDS
files, called by the retention package, or accessed as csv files in
retention\_data/ and are:

1.  `user_activity`: This dataset tracks the activity of users across
    different build versions and dates. It contains 146,463 rows and 3
    variables: `user`, `build`, and `activity_date`.

<!-- -->

    dim(retention::user_activity)

    ## [1] 146463      3

    retention::user_activity %>% head() %>% gt::gt()

<div id="bryrxrcmmt" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#bryrxrcmmt table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#bryrxrcmmt thead, #bryrxrcmmt tbody, #bryrxrcmmt tfoot, #bryrxrcmmt tr, #bryrxrcmmt td, #bryrxrcmmt th {
  border-style: none;
}

#bryrxrcmmt p {
  margin: 0;
  padding: 0;
}

#bryrxrcmmt .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bryrxrcmmt .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#bryrxrcmmt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bryrxrcmmt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bryrxrcmmt .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bryrxrcmmt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bryrxrcmmt .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bryrxrcmmt .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bryrxrcmmt .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bryrxrcmmt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bryrxrcmmt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bryrxrcmmt .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bryrxrcmmt .gt_spanner_row {
  border-bottom-style: hidden;
}

#bryrxrcmmt .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#bryrxrcmmt .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bryrxrcmmt .gt_from_md > :first-child {
  margin-top: 0;
}

#bryrxrcmmt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bryrxrcmmt .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bryrxrcmmt .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#bryrxrcmmt .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#bryrxrcmmt .gt_row_group_first td {
  border-top-width: 2px;
}

#bryrxrcmmt .gt_row_group_first th {
  border-top-width: 2px;
}

#bryrxrcmmt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bryrxrcmmt .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#bryrxrcmmt .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#bryrxrcmmt .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bryrxrcmmt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bryrxrcmmt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bryrxrcmmt .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#bryrxrcmmt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bryrxrcmmt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bryrxrcmmt .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bryrxrcmmt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bryrxrcmmt .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bryrxrcmmt .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bryrxrcmmt .gt_left {
  text-align: left;
}

#bryrxrcmmt .gt_center {
  text-align: center;
}

#bryrxrcmmt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bryrxrcmmt .gt_font_normal {
  font-weight: normal;
}

#bryrxrcmmt .gt_font_bold {
  font-weight: bold;
}

#bryrxrcmmt .gt_font_italic {
  font-style: italic;
}

#bryrxrcmmt .gt_super {
  font-size: 65%;
}

#bryrxrcmmt .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#bryrxrcmmt .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#bryrxrcmmt .gt_indent_1 {
  text-indent: 5px;
}

#bryrxrcmmt .gt_indent_2 {
  text-indent: 10px;
}

#bryrxrcmmt .gt_indent_3 {
  text-indent: 15px;
}

#bryrxrcmmt .gt_indent_4 {
  text-indent: 20px;
}

#bryrxrcmmt .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="user">user</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="build">build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_date">activity_date</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="user" class="gt_row gt_left">user_1</td>
<td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-01-21</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_10</td>
<td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-01-23</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_10</td>
<td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-01-26</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_10</td>
<td headers="build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-02-06</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_100</td>
<td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-01-12</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_100</td>
<td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-01-13</td></tr>
  </tbody>
  
  
</table>
</div>

1.  `users`: This dataset tracks the activity of users from their first
    build version and date. It contains 47,031 rows and 4 variables:
    `user`, `first_build`, `activity_start`, and `activity_days`.

<!-- -->

    dim(retention::users)

    ## [1] 47031     4

    retention::users %>% head() %>% gt::gt()

<div id="cysfiqjfcf" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cysfiqjfcf table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#cysfiqjfcf thead, #cysfiqjfcf tbody, #cysfiqjfcf tfoot, #cysfiqjfcf tr, #cysfiqjfcf td, #cysfiqjfcf th {
  border-style: none;
}

#cysfiqjfcf p {
  margin: 0;
  padding: 0;
}

#cysfiqjfcf .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#cysfiqjfcf .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#cysfiqjfcf .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cysfiqjfcf .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cysfiqjfcf .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cysfiqjfcf .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cysfiqjfcf .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cysfiqjfcf .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#cysfiqjfcf .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#cysfiqjfcf .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cysfiqjfcf .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cysfiqjfcf .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#cysfiqjfcf .gt_spanner_row {
  border-bottom-style: hidden;
}

#cysfiqjfcf .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#cysfiqjfcf .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#cysfiqjfcf .gt_from_md > :first-child {
  margin-top: 0;
}

#cysfiqjfcf .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cysfiqjfcf .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#cysfiqjfcf .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#cysfiqjfcf .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#cysfiqjfcf .gt_row_group_first td {
  border-top-width: 2px;
}

#cysfiqjfcf .gt_row_group_first th {
  border-top-width: 2px;
}

#cysfiqjfcf .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cysfiqjfcf .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#cysfiqjfcf .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#cysfiqjfcf .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cysfiqjfcf .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cysfiqjfcf .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cysfiqjfcf .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#cysfiqjfcf .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#cysfiqjfcf .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cysfiqjfcf .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cysfiqjfcf .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cysfiqjfcf .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cysfiqjfcf .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cysfiqjfcf .gt_left {
  text-align: left;
}

#cysfiqjfcf .gt_center {
  text-align: center;
}

#cysfiqjfcf .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cysfiqjfcf .gt_font_normal {
  font-weight: normal;
}

#cysfiqjfcf .gt_font_bold {
  font-weight: bold;
}

#cysfiqjfcf .gt_font_italic {
  font-style: italic;
}

#cysfiqjfcf .gt_super {
  font-size: 65%;
}

#cysfiqjfcf .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#cysfiqjfcf .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#cysfiqjfcf .gt_indent_1 {
  text-indent: 5px;
}

#cysfiqjfcf .gt_indent_2 {
  text-indent: 10px;
}

#cysfiqjfcf .gt_indent_3 {
  text-indent: 15px;
}

#cysfiqjfcf .gt_indent_4 {
  text-indent: 20px;
}

#cysfiqjfcf .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="user">user</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="first_build">first_build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_start">activity_start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_days">activity_days</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="user" class="gt_row gt_left">user_1</td>
<td headers="first_build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-21</td>
<td headers="activity_days" class="gt_row gt_right">300</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_2</td>
<td headers="first_build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-17</td>
<td headers="activity_days" class="gt_row gt_right">443</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_3</td>
<td headers="first_build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-14</td>
<td headers="activity_days" class="gt_row gt_right">381</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_4</td>
<td headers="first_build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-09</td>
<td headers="activity_days" class="gt_row gt_right">190</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_5</td>
<td headers="first_build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-24</td>
<td headers="activity_days" class="gt_row gt_right">505</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_6</td>
<td headers="first_build" class="gt_row gt_right">0.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-11</td>
<td headers="activity_days" class="gt_row gt_right">552</td></tr>
  </tbody>
  
  
</table>
</div>

1.  `builds`: This dataset tracks the release information of different
    build versions. It contains 57 rows and 4 variables: `build`,
    `release_length`, `release_start`, and `release_end`.

For more detailed information about these datasets, please refer to the
documentation in the `pkg_data.R` file.

    dim(retention::builds)

    ## [1] 57  4

    retention::builds %>% head() %>% gt::gt()

<div id="barulyqqut" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#barulyqqut table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#barulyqqut thead, #barulyqqut tbody, #barulyqqut tfoot, #barulyqqut tr, #barulyqqut td, #barulyqqut th {
  border-style: none;
}

#barulyqqut p {
  margin: 0;
  padding: 0;
}

#barulyqqut .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#barulyqqut .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#barulyqqut .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#barulyqqut .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#barulyqqut .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#barulyqqut .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#barulyqqut .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#barulyqqut .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#barulyqqut .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#barulyqqut .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#barulyqqut .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#barulyqqut .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#barulyqqut .gt_spanner_row {
  border-bottom-style: hidden;
}

#barulyqqut .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#barulyqqut .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#barulyqqut .gt_from_md > :first-child {
  margin-top: 0;
}

#barulyqqut .gt_from_md > :last-child {
  margin-bottom: 0;
}

#barulyqqut .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#barulyqqut .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#barulyqqut .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#barulyqqut .gt_row_group_first td {
  border-top-width: 2px;
}

#barulyqqut .gt_row_group_first th {
  border-top-width: 2px;
}

#barulyqqut .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#barulyqqut .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#barulyqqut .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#barulyqqut .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#barulyqqut .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#barulyqqut .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#barulyqqut .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#barulyqqut .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#barulyqqut .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#barulyqqut .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#barulyqqut .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#barulyqqut .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#barulyqqut .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#barulyqqut .gt_left {
  text-align: left;
}

#barulyqqut .gt_center {
  text-align: center;
}

#barulyqqut .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#barulyqqut .gt_font_normal {
  font-weight: normal;
}

#barulyqqut .gt_font_bold {
  font-weight: bold;
}

#barulyqqut .gt_font_italic {
  font-style: italic;
}

#barulyqqut .gt_super {
  font-size: 65%;
}

#barulyqqut .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#barulyqqut .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#barulyqqut .gt_indent_1 {
  text-indent: 5px;
}

#barulyqqut .gt_indent_2 {
  text-indent: 10px;
}

#barulyqqut .gt_indent_3 {
  text-indent: 15px;
}

#barulyqqut .gt_indent_4 {
  text-indent: 20px;
}

#barulyqqut .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="build">build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="release_length">release_length</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="release_start">release_start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="release_end">release_end</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="release_length" class="gt_row gt_right">24</td>
<td headers="release_start" class="gt_row gt_right">2023-01-07</td>
<td headers="release_end" class="gt_row gt_right">2023-01-30</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.0.1</td>
<td headers="release_length" class="gt_row gt_right">4</td>
<td headers="release_start" class="gt_row gt_right">2023-01-31</td>
<td headers="release_end" class="gt_row gt_right">2023-02-03</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.0.2</td>
<td headers="release_length" class="gt_row gt_right">27</td>
<td headers="release_start" class="gt_row gt_right">2023-02-04</td>
<td headers="release_end" class="gt_row gt_right">2023-03-02</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.0</td>
<td headers="release_length" class="gt_row gt_right">30</td>
<td headers="release_start" class="gt_row gt_right">2023-03-03</td>
<td headers="release_end" class="gt_row gt_right">2023-04-01</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.1</td>
<td headers="release_length" class="gt_row gt_right">12</td>
<td headers="release_start" class="gt_row gt_right">2023-04-02</td>
<td headers="release_end" class="gt_row gt_right">2023-04-13</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.2</td>
<td headers="release_length" class="gt_row gt_right">15</td>
<td headers="release_start" class="gt_row gt_right">2023-04-14</td>
<td headers="release_end" class="gt_row gt_right">2023-04-28</td></tr>
  </tbody>
  
  
</table>
</div>

## Functions that simulate user activity for different versions of an app

Simulate builds.

    versions <- 
      get_versions(
              major_change_max = 2, 
              minor_change_max = 1, 
              hot_fix_max = 1) 

    versions %>% gt::gt()

<div id="cwlannmrii" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cwlannmrii table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#cwlannmrii thead, #cwlannmrii tbody, #cwlannmrii tfoot, #cwlannmrii tr, #cwlannmrii td, #cwlannmrii th {
  border-style: none;
}

#cwlannmrii p {
  margin: 0;
  padding: 0;
}

#cwlannmrii .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#cwlannmrii .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#cwlannmrii .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cwlannmrii .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cwlannmrii .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cwlannmrii .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cwlannmrii .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cwlannmrii .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#cwlannmrii .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#cwlannmrii .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cwlannmrii .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cwlannmrii .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#cwlannmrii .gt_spanner_row {
  border-bottom-style: hidden;
}

#cwlannmrii .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#cwlannmrii .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#cwlannmrii .gt_from_md > :first-child {
  margin-top: 0;
}

#cwlannmrii .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cwlannmrii .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#cwlannmrii .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#cwlannmrii .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#cwlannmrii .gt_row_group_first td {
  border-top-width: 2px;
}

#cwlannmrii .gt_row_group_first th {
  border-top-width: 2px;
}

#cwlannmrii .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cwlannmrii .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#cwlannmrii .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#cwlannmrii .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cwlannmrii .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cwlannmrii .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cwlannmrii .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#cwlannmrii .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#cwlannmrii .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cwlannmrii .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cwlannmrii .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cwlannmrii .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cwlannmrii .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cwlannmrii .gt_left {
  text-align: left;
}

#cwlannmrii .gt_center {
  text-align: center;
}

#cwlannmrii .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cwlannmrii .gt_font_normal {
  font-weight: normal;
}

#cwlannmrii .gt_font_bold {
  font-weight: bold;
}

#cwlannmrii .gt_font_italic {
  font-style: italic;
}

#cwlannmrii .gt_super {
  font-size: 65%;
}

#cwlannmrii .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#cwlannmrii .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#cwlannmrii .gt_indent_1 {
  text-indent: 5px;
}

#cwlannmrii .gt_indent_2 {
  text-indent: 10px;
}

#cwlannmrii .gt_indent_3 {
  text-indent: 15px;
}

#cwlannmrii .gt_indent_4 {
  text-indent: 20px;
}

#cwlannmrii .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="major_change">major_change</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="minor_change">minor_change</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="hot_fix">hot_fix</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="build">build</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="major_change" class="gt_row gt_right">0</td>
<td headers="minor_change" class="gt_row gt_right">0</td>
<td headers="hot_fix" class="gt_row gt_right">0</td>
<td headers="build" class="gt_row gt_right">0.0.0</td></tr>
    <tr><td headers="major_change" class="gt_row gt_right">1</td>
<td headers="minor_change" class="gt_row gt_right">0</td>
<td headers="hot_fix" class="gt_row gt_right">0</td>
<td headers="build" class="gt_row gt_right">1.0.0</td></tr>
    <tr><td headers="major_change" class="gt_row gt_right">2</td>
<td headers="minor_change" class="gt_row gt_right">0</td>
<td headers="hot_fix" class="gt_row gt_right">0</td>
<td headers="build" class="gt_row gt_right">2.0.0</td></tr>
    <tr><td headers="major_change" class="gt_row gt_right">2</td>
<td headers="minor_change" class="gt_row gt_right">0</td>
<td headers="hot_fix" class="gt_row gt_right">1</td>
<td headers="build" class="gt_row gt_right">2.0.1</td></tr>
  </tbody>
  
  
</table>
</div>

Simulate release dates for builds.

    builds %>% set_build_releases(release_length_max = 7)

    ## # A tibble: 57 × 4
    ##    build release_length release_start release_end
    ##    <chr>          <int> <date>        <date>     
    ##  1 0.0.0              2 2023-01-07    2023-01-08 
    ##  2 0.0.1              1 2023-01-09    2023-01-09 
    ##  3 0.0.2              5 2023-01-10    2023-01-14 
    ##  4 0.1.0              5 2023-01-15    2023-01-19 
    ##  5 0.1.1              3 2023-01-20    2023-01-22 
    ##  6 0.1.2              4 2023-01-23    2023-01-26 
    ##  7 0.1.3              2 2023-01-27    2023-01-28 
    ##  8 0.2.0              7 2023-01-29    2023-02-04 
    ##  9 0.3.0              3 2023-02-05    2023-02-07 
    ## 10 0.3.1              4 2023-02-08    2023-02-11 
    ## # ℹ 47 more rows

    builds %>% gt::gt()

<div id="oonxxoqzcb" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#oonxxoqzcb table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#oonxxoqzcb thead, #oonxxoqzcb tbody, #oonxxoqzcb tfoot, #oonxxoqzcb tr, #oonxxoqzcb td, #oonxxoqzcb th {
  border-style: none;
}

#oonxxoqzcb p {
  margin: 0;
  padding: 0;
}

#oonxxoqzcb .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#oonxxoqzcb .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#oonxxoqzcb .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#oonxxoqzcb .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#oonxxoqzcb .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#oonxxoqzcb .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#oonxxoqzcb .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#oonxxoqzcb .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#oonxxoqzcb .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#oonxxoqzcb .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#oonxxoqzcb .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#oonxxoqzcb .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#oonxxoqzcb .gt_spanner_row {
  border-bottom-style: hidden;
}

#oonxxoqzcb .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#oonxxoqzcb .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#oonxxoqzcb .gt_from_md > :first-child {
  margin-top: 0;
}

#oonxxoqzcb .gt_from_md > :last-child {
  margin-bottom: 0;
}

#oonxxoqzcb .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#oonxxoqzcb .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#oonxxoqzcb .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#oonxxoqzcb .gt_row_group_first td {
  border-top-width: 2px;
}

#oonxxoqzcb .gt_row_group_first th {
  border-top-width: 2px;
}

#oonxxoqzcb .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#oonxxoqzcb .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#oonxxoqzcb .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#oonxxoqzcb .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#oonxxoqzcb .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#oonxxoqzcb .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#oonxxoqzcb .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#oonxxoqzcb .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#oonxxoqzcb .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#oonxxoqzcb .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#oonxxoqzcb .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#oonxxoqzcb .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#oonxxoqzcb .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#oonxxoqzcb .gt_left {
  text-align: left;
}

#oonxxoqzcb .gt_center {
  text-align: center;
}

#oonxxoqzcb .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#oonxxoqzcb .gt_font_normal {
  font-weight: normal;
}

#oonxxoqzcb .gt_font_bold {
  font-weight: bold;
}

#oonxxoqzcb .gt_font_italic {
  font-style: italic;
}

#oonxxoqzcb .gt_super {
  font-size: 65%;
}

#oonxxoqzcb .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#oonxxoqzcb .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#oonxxoqzcb .gt_indent_1 {
  text-indent: 5px;
}

#oonxxoqzcb .gt_indent_2 {
  text-indent: 10px;
}

#oonxxoqzcb .gt_indent_3 {
  text-indent: 15px;
}

#oonxxoqzcb .gt_indent_4 {
  text-indent: 20px;
}

#oonxxoqzcb .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="build">build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="release_length">release_length</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="release_start">release_start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="release_end">release_end</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="build" class="gt_row gt_right">0.0.0</td>
<td headers="release_length" class="gt_row gt_right">24</td>
<td headers="release_start" class="gt_row gt_right">2023-01-07</td>
<td headers="release_end" class="gt_row gt_right">2023-01-30</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.0.1</td>
<td headers="release_length" class="gt_row gt_right">4</td>
<td headers="release_start" class="gt_row gt_right">2023-01-31</td>
<td headers="release_end" class="gt_row gt_right">2023-02-03</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.0.2</td>
<td headers="release_length" class="gt_row gt_right">27</td>
<td headers="release_start" class="gt_row gt_right">2023-02-04</td>
<td headers="release_end" class="gt_row gt_right">2023-03-02</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.0</td>
<td headers="release_length" class="gt_row gt_right">30</td>
<td headers="release_start" class="gt_row gt_right">2023-03-03</td>
<td headers="release_end" class="gt_row gt_right">2023-04-01</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.1</td>
<td headers="release_length" class="gt_row gt_right">12</td>
<td headers="release_start" class="gt_row gt_right">2023-04-02</td>
<td headers="release_end" class="gt_row gt_right">2023-04-13</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.2</td>
<td headers="release_length" class="gt_row gt_right">15</td>
<td headers="release_start" class="gt_row gt_right">2023-04-14</td>
<td headers="release_end" class="gt_row gt_right">2023-04-28</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.1.3</td>
<td headers="release_length" class="gt_row gt_right">6</td>
<td headers="release_start" class="gt_row gt_right">2023-04-29</td>
<td headers="release_end" class="gt_row gt_right">2023-05-04</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.2.0</td>
<td headers="release_length" class="gt_row gt_right">4</td>
<td headers="release_start" class="gt_row gt_right">2023-05-05</td>
<td headers="release_end" class="gt_row gt_right">2023-05-08</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="release_length" class="gt_row gt_right">22</td>
<td headers="release_start" class="gt_row gt_right">2023-05-09</td>
<td headers="release_end" class="gt_row gt_right">2023-05-30</td></tr>
    <tr><td headers="build" class="gt_row gt_right">0.3.1</td>
<td headers="release_length" class="gt_row gt_right">16</td>
<td headers="release_start" class="gt_row gt_right">2023-05-31</td>
<td headers="release_end" class="gt_row gt_right">2023-06-15</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.0.0</td>
<td headers="release_length" class="gt_row gt_right">19</td>
<td headers="release_start" class="gt_row gt_right">2023-06-16</td>
<td headers="release_end" class="gt_row gt_right">2023-07-04</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.1.0</td>
<td headers="release_length" class="gt_row gt_right">16</td>
<td headers="release_start" class="gt_row gt_right">2023-07-05</td>
<td headers="release_end" class="gt_row gt_right">2023-07-20</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.1.1</td>
<td headers="release_length" class="gt_row gt_right">1</td>
<td headers="release_start" class="gt_row gt_right">2023-07-21</td>
<td headers="release_end" class="gt_row gt_right">2023-07-21</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.1.2</td>
<td headers="release_length" class="gt_row gt_right">30</td>
<td headers="release_start" class="gt_row gt_right">2023-07-22</td>
<td headers="release_end" class="gt_row gt_right">2023-08-20</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.1.3</td>
<td headers="release_length" class="gt_row gt_right">6</td>
<td headers="release_start" class="gt_row gt_right">2023-08-21</td>
<td headers="release_end" class="gt_row gt_right">2023-08-26</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.2.0</td>
<td headers="release_length" class="gt_row gt_right">28</td>
<td headers="release_start" class="gt_row gt_right">2023-08-27</td>
<td headers="release_end" class="gt_row gt_right">2023-09-23</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.2.1</td>
<td headers="release_length" class="gt_row gt_right">15</td>
<td headers="release_start" class="gt_row gt_right">2023-09-24</td>
<td headers="release_end" class="gt_row gt_right">2023-10-08</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.3.0</td>
<td headers="release_length" class="gt_row gt_right">13</td>
<td headers="release_start" class="gt_row gt_right">2023-10-09</td>
<td headers="release_end" class="gt_row gt_right">2023-10-21</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.3.1</td>
<td headers="release_length" class="gt_row gt_right">19</td>
<td headers="release_start" class="gt_row gt_right">2023-10-22</td>
<td headers="release_end" class="gt_row gt_right">2023-11-09</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.3.2</td>
<td headers="release_length" class="gt_row gt_right">15</td>
<td headers="release_start" class="gt_row gt_right">2023-11-10</td>
<td headers="release_end" class="gt_row gt_right">2023-11-24</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.3.3</td>
<td headers="release_length" class="gt_row gt_right">6</td>
<td headers="release_start" class="gt_row gt_right">2023-11-25</td>
<td headers="release_end" class="gt_row gt_right">2023-11-30</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.4.0</td>
<td headers="release_length" class="gt_row gt_right">12</td>
<td headers="release_start" class="gt_row gt_right">2023-12-01</td>
<td headers="release_end" class="gt_row gt_right">2023-12-12</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.4.1</td>
<td headers="release_length" class="gt_row gt_right">1</td>
<td headers="release_start" class="gt_row gt_right">2023-12-13</td>
<td headers="release_end" class="gt_row gt_right">2023-12-13</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.4.2</td>
<td headers="release_length" class="gt_row gt_right">23</td>
<td headers="release_start" class="gt_row gt_right">2023-12-14</td>
<td headers="release_end" class="gt_row gt_right">2024-01-05</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.4.3</td>
<td headers="release_length" class="gt_row gt_right">2</td>
<td headers="release_start" class="gt_row gt_right">2024-01-06</td>
<td headers="release_end" class="gt_row gt_right">2024-01-07</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.5.0</td>
<td headers="release_length" class="gt_row gt_right">29</td>
<td headers="release_start" class="gt_row gt_right">2024-01-08</td>
<td headers="release_end" class="gt_row gt_right">2024-02-05</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.6.0</td>
<td headers="release_length" class="gt_row gt_right">17</td>
<td headers="release_start" class="gt_row gt_right">2024-02-06</td>
<td headers="release_end" class="gt_row gt_right">2024-02-22</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.6.1</td>
<td headers="release_length" class="gt_row gt_right">15</td>
<td headers="release_start" class="gt_row gt_right">2024-02-23</td>
<td headers="release_end" class="gt_row gt_right">2024-03-08</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.6.2</td>
<td headers="release_length" class="gt_row gt_right">18</td>
<td headers="release_start" class="gt_row gt_right">2024-03-09</td>
<td headers="release_end" class="gt_row gt_right">2024-03-26</td></tr>
    <tr><td headers="build" class="gt_row gt_right">1.6.3</td>
<td headers="release_length" class="gt_row gt_right">30</td>
<td headers="release_start" class="gt_row gt_right">2024-03-27</td>
<td headers="release_end" class="gt_row gt_right">2024-04-25</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.0.0</td>
<td headers="release_length" class="gt_row gt_right">8</td>
<td headers="release_start" class="gt_row gt_right">2024-04-26</td>
<td headers="release_end" class="gt_row gt_right">2024-05-03</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.0.1</td>
<td headers="release_length" class="gt_row gt_right">25</td>
<td headers="release_start" class="gt_row gt_right">2024-05-04</td>
<td headers="release_end" class="gt_row gt_right">2024-05-28</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.1.0</td>
<td headers="release_length" class="gt_row gt_right">9</td>
<td headers="release_start" class="gt_row gt_right">2024-05-29</td>
<td headers="release_end" class="gt_row gt_right">2024-06-06</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.1.1</td>
<td headers="release_length" class="gt_row gt_right">4</td>
<td headers="release_start" class="gt_row gt_right">2024-06-07</td>
<td headers="release_end" class="gt_row gt_right">2024-06-10</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.1.2</td>
<td headers="release_length" class="gt_row gt_right">22</td>
<td headers="release_start" class="gt_row gt_right">2024-06-11</td>
<td headers="release_end" class="gt_row gt_right">2024-07-02</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.1.3</td>
<td headers="release_length" class="gt_row gt_right">28</td>
<td headers="release_start" class="gt_row gt_right">2024-07-03</td>
<td headers="release_end" class="gt_row gt_right">2024-07-30</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.2.0</td>
<td headers="release_length" class="gt_row gt_right">6</td>
<td headers="release_start" class="gt_row gt_right">2024-07-31</td>
<td headers="release_end" class="gt_row gt_right">2024-08-05</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.2.1</td>
<td headers="release_length" class="gt_row gt_right">11</td>
<td headers="release_start" class="gt_row gt_right">2024-08-06</td>
<td headers="release_end" class="gt_row gt_right">2024-08-16</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.3.0</td>
<td headers="release_length" class="gt_row gt_right">21</td>
<td headers="release_start" class="gt_row gt_right">2024-08-17</td>
<td headers="release_end" class="gt_row gt_right">2024-09-06</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.3.1</td>
<td headers="release_length" class="gt_row gt_right">28</td>
<td headers="release_start" class="gt_row gt_right">2024-09-07</td>
<td headers="release_end" class="gt_row gt_right">2024-10-04</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.3.2</td>
<td headers="release_length" class="gt_row gt_right">5</td>
<td headers="release_start" class="gt_row gt_right">2024-10-05</td>
<td headers="release_end" class="gt_row gt_right">2024-10-09</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.4.0</td>
<td headers="release_length" class="gt_row gt_right">21</td>
<td headers="release_start" class="gt_row gt_right">2024-10-10</td>
<td headers="release_end" class="gt_row gt_right">2024-10-30</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.4.1</td>
<td headers="release_length" class="gt_row gt_right">20</td>
<td headers="release_start" class="gt_row gt_right">2024-10-31</td>
<td headers="release_end" class="gt_row gt_right">2024-11-19</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.4.2</td>
<td headers="release_length" class="gt_row gt_right">23</td>
<td headers="release_start" class="gt_row gt_right">2024-11-20</td>
<td headers="release_end" class="gt_row gt_right">2024-12-12</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.4.3</td>
<td headers="release_length" class="gt_row gt_right">11</td>
<td headers="release_start" class="gt_row gt_right">2024-12-13</td>
<td headers="release_end" class="gt_row gt_right">2024-12-23</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.5.0</td>
<td headers="release_length" class="gt_row gt_right">4</td>
<td headers="release_start" class="gt_row gt_right">2024-12-24</td>
<td headers="release_end" class="gt_row gt_right">2024-12-27</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.6.0</td>
<td headers="release_length" class="gt_row gt_right">23</td>
<td headers="release_start" class="gt_row gt_right">2024-12-28</td>
<td headers="release_end" class="gt_row gt_right">2025-01-19</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.6.1</td>
<td headers="release_length" class="gt_row gt_right">18</td>
<td headers="release_start" class="gt_row gt_right">2025-01-20</td>
<td headers="release_end" class="gt_row gt_right">2025-02-06</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.6.2</td>
<td headers="release_length" class="gt_row gt_right">1</td>
<td headers="release_start" class="gt_row gt_right">2025-02-07</td>
<td headers="release_end" class="gt_row gt_right">2025-02-07</td></tr>
    <tr><td headers="build" class="gt_row gt_right">2.6.3</td>
<td headers="release_length" class="gt_row gt_right">3</td>
<td headers="release_start" class="gt_row gt_right">2025-02-08</td>
<td headers="release_end" class="gt_row gt_right">2025-02-10</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.0.0</td>
<td headers="release_length" class="gt_row gt_right">27</td>
<td headers="release_start" class="gt_row gt_right">2025-02-11</td>
<td headers="release_end" class="gt_row gt_right">2025-03-09</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.0.1</td>
<td headers="release_length" class="gt_row gt_right">29</td>
<td headers="release_start" class="gt_row gt_right">2025-03-10</td>
<td headers="release_end" class="gt_row gt_right">2025-04-07</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.0.2</td>
<td headers="release_length" class="gt_row gt_right">4</td>
<td headers="release_start" class="gt_row gt_right">2025-04-08</td>
<td headers="release_end" class="gt_row gt_right">2025-04-11</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.1.0</td>
<td headers="release_length" class="gt_row gt_right">5</td>
<td headers="release_start" class="gt_row gt_right">2025-04-12</td>
<td headers="release_end" class="gt_row gt_right">2025-04-16</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.1.1</td>
<td headers="release_length" class="gt_row gt_right">8</td>
<td headers="release_start" class="gt_row gt_right">2025-04-17</td>
<td headers="release_end" class="gt_row gt_right">2025-04-24</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.1.2</td>
<td headers="release_length" class="gt_row gt_right">27</td>
<td headers="release_start" class="gt_row gt_right">2025-04-25</td>
<td headers="release_end" class="gt_row gt_right">2025-05-21</td></tr>
    <tr><td headers="build" class="gt_row gt_right">3.1.3</td>
<td headers="release_length" class="gt_row gt_right">22</td>
<td headers="release_start" class="gt_row gt_right">2025-05-22</td>
<td headers="release_end" class="gt_row gt_right">2025-06-12</td></tr>
  </tbody>
  
  
</table>
</div>

Simulate users for builds.

    users <- get_users(
        builds, 
        new_users_max = 3, 
        max_activity_days = 14)

    users %>% gt::gt()

<div id="buickvarzz" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#buickvarzz table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#buickvarzz thead, #buickvarzz tbody, #buickvarzz tfoot, #buickvarzz tr, #buickvarzz td, #buickvarzz th {
  border-style: none;
}

#buickvarzz p {
  margin: 0;
  padding: 0;
}

#buickvarzz .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#buickvarzz .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#buickvarzz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#buickvarzz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#buickvarzz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#buickvarzz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#buickvarzz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#buickvarzz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#buickvarzz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#buickvarzz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#buickvarzz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#buickvarzz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#buickvarzz .gt_spanner_row {
  border-bottom-style: hidden;
}

#buickvarzz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#buickvarzz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#buickvarzz .gt_from_md > :first-child {
  margin-top: 0;
}

#buickvarzz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#buickvarzz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#buickvarzz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#buickvarzz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#buickvarzz .gt_row_group_first td {
  border-top-width: 2px;
}

#buickvarzz .gt_row_group_first th {
  border-top-width: 2px;
}

#buickvarzz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#buickvarzz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#buickvarzz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#buickvarzz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#buickvarzz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#buickvarzz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#buickvarzz .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#buickvarzz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#buickvarzz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#buickvarzz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#buickvarzz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#buickvarzz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#buickvarzz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#buickvarzz .gt_left {
  text-align: left;
}

#buickvarzz .gt_center {
  text-align: center;
}

#buickvarzz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#buickvarzz .gt_font_normal {
  font-weight: normal;
}

#buickvarzz .gt_font_bold {
  font-weight: bold;
}

#buickvarzz .gt_font_italic {
  font-style: italic;
}

#buickvarzz .gt_super {
  font-size: 65%;
}

#buickvarzz .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#buickvarzz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#buickvarzz .gt_indent_1 {
  text-indent: 5px;
}

#buickvarzz .gt_indent_2 {
  text-indent: 10px;
}

#buickvarzz .gt_indent_3 {
  text-indent: 15px;
}

#buickvarzz .gt_indent_4 {
  text-indent: 20px;
}

#buickvarzz .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="user">user</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="first_build">first_build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_start">activity_start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_days">activity_days</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="user" class="gt_row gt_left">user_1</td>
<td headers="first_build" class="gt_row gt_right">0.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-31</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_2</td>
<td headers="first_build" class="gt_row gt_right">0.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-02-02</td>
<td headers="activity_days" class="gt_row gt_right">1</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_3</td>
<td headers="first_build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-02-07</td>
<td headers="activity_days" class="gt_row gt_right">2</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_4</td>
<td headers="first_build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-02-17</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_5</td>
<td headers="first_build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-03-01</td>
<td headers="activity_days" class="gt_row gt_right">2</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_6</td>
<td headers="first_build" class="gt_row gt_right">0.1.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-03-17</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_7</td>
<td headers="first_build" class="gt_row gt_right">0.1.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-03-04</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_8</td>
<td headers="first_build" class="gt_row gt_right">0.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-04-19</td>
<td headers="activity_days" class="gt_row gt_right">7</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_9</td>
<td headers="first_build" class="gt_row gt_right">0.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-04-19</td>
<td headers="activity_days" class="gt_row gt_right">2</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_10</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-02</td>
<td headers="activity_days" class="gt_row gt_right">4</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_11</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-02</td>
<td headers="activity_days" class="gt_row gt_right">6</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_12</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_13</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-06</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_14</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_15</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-25</td>
<td headers="activity_days" class="gt_row gt_right">6</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_16</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-30</td>
<td headers="activity_days" class="gt_row gt_right">12</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_17</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-09</td>
<td headers="activity_days" class="gt_row gt_right">8</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_18</td>
<td headers="first_build" class="gt_row gt_right">0.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-06-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_19</td>
<td headers="first_build" class="gt_row gt_right">1.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-07-21</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_20</td>
<td headers="first_build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-08-14</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_21</td>
<td headers="first_build" class="gt_row gt_right">1.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-08-23</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_22</td>
<td headers="first_build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-06</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_23</td>
<td headers="first_build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-23</td>
<td headers="activity_days" class="gt_row gt_right">8</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_24</td>
<td headers="first_build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-28</td>
<td headers="activity_days" class="gt_row gt_right">6</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_25</td>
<td headers="first_build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-10-07</td>
<td headers="activity_days" class="gt_row gt_right">4</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_26</td>
<td headers="first_build" class="gt_row gt_right">1.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-01</td>
<td headers="activity_days" class="gt_row gt_right">1</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_27</td>
<td headers="first_build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-15</td>
<td headers="activity_days" class="gt_row gt_right">7</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_28</td>
<td headers="first_build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-12</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_29</td>
<td headers="first_build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-28</td>
<td headers="activity_days" class="gt_row gt_right">7</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_30</td>
<td headers="first_build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-29</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_31</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_32</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-30</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_33</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-17</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_34</td>
<td headers="first_build" class="gt_row gt_right">1.6.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-02-20</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_35</td>
<td headers="first_build" class="gt_row gt_right">1.6.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-02-20</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_36</td>
<td headers="first_build" class="gt_row gt_right">1.6.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-03-03</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_37</td>
<td headers="first_build" class="gt_row gt_right">1.6.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-03-08</td>
<td headers="activity_days" class="gt_row gt_right">11</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_38</td>
<td headers="first_build" class="gt_row gt_right">1.6.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-02-29</td>
<td headers="activity_days" class="gt_row gt_right">2</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_39</td>
<td headers="first_build" class="gt_row gt_right">1.6.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-03-12</td>
<td headers="activity_days" class="gt_row gt_right">4</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_40</td>
<td headers="first_build" class="gt_row gt_right">1.6.3</td>
<td headers="activity_start" class="gt_row gt_right">2024-04-12</td>
<td headers="activity_days" class="gt_row gt_right">11</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_41</td>
<td headers="first_build" class="gt_row gt_right">1.6.3</td>
<td headers="activity_start" class="gt_row gt_right">2024-04-22</td>
<td headers="activity_days" class="gt_row gt_right">1</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_42</td>
<td headers="first_build" class="gt_row gt_right">2.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-05-01</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_43</td>
<td headers="first_build" class="gt_row gt_right">2.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-04-28</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_44</td>
<td headers="first_build" class="gt_row gt_right">2.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-05-23</td>
<td headers="activity_days" class="gt_row gt_right">12</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_45</td>
<td headers="first_build" class="gt_row gt_right">2.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-05-24</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_46</td>
<td headers="first_build" class="gt_row gt_right">2.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-05-23</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_47</td>
<td headers="first_build" class="gt_row gt_right">2.1.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-04</td>
<td headers="activity_days" class="gt_row gt_right">1</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_48</td>
<td headers="first_build" class="gt_row gt_right">2.1.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-02</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_49</td>
<td headers="first_build" class="gt_row gt_right">2.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-08</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_50</td>
<td headers="first_build" class="gt_row gt_right">2.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-07</td>
<td headers="activity_days" class="gt_row gt_right">11</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_51</td>
<td headers="first_build" class="gt_row gt_right">2.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-09</td>
<td headers="activity_days" class="gt_row gt_right">12</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_52</td>
<td headers="first_build" class="gt_row gt_right">2.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-28</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_53</td>
<td headers="first_build" class="gt_row gt_right">2.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-14</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_54</td>
<td headers="first_build" class="gt_row gt_right">2.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-06-29</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_55</td>
<td headers="first_build" class="gt_row gt_right">2.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2024-07-14</td>
<td headers="activity_days" class="gt_row gt_right">11</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_56</td>
<td headers="first_build" class="gt_row gt_right">2.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2024-07-24</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_57</td>
<td headers="first_build" class="gt_row gt_right">2.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-08-05</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_58</td>
<td headers="first_build" class="gt_row gt_right">2.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-08-01</td>
<td headers="activity_days" class="gt_row gt_right">1</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_59</td>
<td headers="first_build" class="gt_row gt_right">2.2.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-08-15</td>
<td headers="activity_days" class="gt_row gt_right">1</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_60</td>
<td headers="first_build" class="gt_row gt_right">2.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-08-18</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_61</td>
<td headers="first_build" class="gt_row gt_right">2.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-08-25</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_62</td>
<td headers="first_build" class="gt_row gt_right">2.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-09-11</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_63</td>
<td headers="first_build" class="gt_row gt_right">2.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-09-08</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_64</td>
<td headers="first_build" class="gt_row gt_right">2.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-10-06</td>
<td headers="activity_days" class="gt_row gt_right">2</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_65</td>
<td headers="first_build" class="gt_row gt_right">2.4.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-10-10</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_66</td>
<td headers="first_build" class="gt_row gt_right">2.4.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-11-14</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_67</td>
<td headers="first_build" class="gt_row gt_right">2.4.1</td>
<td headers="activity_start" class="gt_row gt_right">2024-11-04</td>
<td headers="activity_days" class="gt_row gt_right">11</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_68</td>
<td headers="first_build" class="gt_row gt_right">2.4.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-11-24</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_69</td>
<td headers="first_build" class="gt_row gt_right">2.4.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-11-24</td>
<td headers="activity_days" class="gt_row gt_right">6</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_70</td>
<td headers="first_build" class="gt_row gt_right">2.4.2</td>
<td headers="activity_start" class="gt_row gt_right">2024-11-26</td>
<td headers="activity_days" class="gt_row gt_right">7</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_71</td>
<td headers="first_build" class="gt_row gt_right">2.4.3</td>
<td headers="activity_start" class="gt_row gt_right">2024-12-17</td>
<td headers="activity_days" class="gt_row gt_right">12</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_72</td>
<td headers="first_build" class="gt_row gt_right">2.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-12-24</td>
<td headers="activity_days" class="gt_row gt_right">6</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_73</td>
<td headers="first_build" class="gt_row gt_right">2.6.0</td>
<td headers="activity_start" class="gt_row gt_right">2025-01-17</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_74</td>
<td headers="first_build" class="gt_row gt_right">2.6.0</td>
<td headers="activity_start" class="gt_row gt_right">2025-01-14</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_75</td>
<td headers="first_build" class="gt_row gt_right">2.6.0</td>
<td headers="activity_start" class="gt_row gt_right">2025-01-05</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_76</td>
<td headers="first_build" class="gt_row gt_right">2.6.1</td>
<td headers="activity_start" class="gt_row gt_right">2025-01-25</td>
<td headers="activity_days" class="gt_row gt_right">8</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_77</td>
<td headers="first_build" class="gt_row gt_right">2.6.3</td>
<td headers="activity_start" class="gt_row gt_right">2025-02-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_78</td>
<td headers="first_build" class="gt_row gt_right">2.6.3</td>
<td headers="activity_start" class="gt_row gt_right">2025-02-09</td>
<td headers="activity_days" class="gt_row gt_right">12</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_79</td>
<td headers="first_build" class="gt_row gt_right">2.6.3</td>
<td headers="activity_start" class="gt_row gt_right">2025-02-08</td>
<td headers="activity_days" class="gt_row gt_right">13</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_80</td>
<td headers="first_build" class="gt_row gt_right">3.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2025-03-03</td>
<td headers="activity_days" class="gt_row gt_right">6</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_81</td>
<td headers="first_build" class="gt_row gt_right">3.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2025-03-03</td>
<td headers="activity_days" class="gt_row gt_right">9</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_82</td>
<td headers="first_build" class="gt_row gt_right">3.0.0</td>
<td headers="activity_start" class="gt_row gt_right">2025-02-18</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_83</td>
<td headers="first_build" class="gt_row gt_right">3.0.2</td>
<td headers="activity_start" class="gt_row gt_right">2025-04-10</td>
<td headers="activity_days" class="gt_row gt_right">5</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_84</td>
<td headers="first_build" class="gt_row gt_right">3.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2025-04-18</td>
<td headers="activity_days" class="gt_row gt_right">14</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_85</td>
<td headers="first_build" class="gt_row gt_right">3.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2025-04-25</td>
<td headers="activity_days" class="gt_row gt_right">4</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_86</td>
<td headers="first_build" class="gt_row gt_right">3.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2025-05-22</td>
<td headers="activity_days" class="gt_row gt_right">3</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_87</td>
<td headers="first_build" class="gt_row gt_right">3.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2025-06-06</td>
<td headers="activity_days" class="gt_row gt_right">4</td></tr>
  </tbody>
  
  
</table>
</div>

Simulate activity.

    user_activity_data <- get_activity(builds, users) %>% 
      dplyr::filter(active_on_date == TRUE)

    head(user_activity_data, 50) %>% gt::gt()

<div id="kjjxspxzwt" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#kjjxspxzwt table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#kjjxspxzwt thead, #kjjxspxzwt tbody, #kjjxspxzwt tfoot, #kjjxspxzwt tr, #kjjxspxzwt td, #kjjxspxzwt th {
  border-style: none;
}

#kjjxspxzwt p {
  margin: 0;
  padding: 0;
}

#kjjxspxzwt .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#kjjxspxzwt .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#kjjxspxzwt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#kjjxspxzwt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#kjjxspxzwt .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#kjjxspxzwt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kjjxspxzwt .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#kjjxspxzwt .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#kjjxspxzwt .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#kjjxspxzwt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#kjjxspxzwt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#kjjxspxzwt .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#kjjxspxzwt .gt_spanner_row {
  border-bottom-style: hidden;
}

#kjjxspxzwt .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#kjjxspxzwt .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#kjjxspxzwt .gt_from_md > :first-child {
  margin-top: 0;
}

#kjjxspxzwt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#kjjxspxzwt .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#kjjxspxzwt .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#kjjxspxzwt .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#kjjxspxzwt .gt_row_group_first td {
  border-top-width: 2px;
}

#kjjxspxzwt .gt_row_group_first th {
  border-top-width: 2px;
}

#kjjxspxzwt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kjjxspxzwt .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#kjjxspxzwt .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#kjjxspxzwt .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kjjxspxzwt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kjjxspxzwt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#kjjxspxzwt .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#kjjxspxzwt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#kjjxspxzwt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kjjxspxzwt .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#kjjxspxzwt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#kjjxspxzwt .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#kjjxspxzwt .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#kjjxspxzwt .gt_left {
  text-align: left;
}

#kjjxspxzwt .gt_center {
  text-align: center;
}

#kjjxspxzwt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#kjjxspxzwt .gt_font_normal {
  font-weight: normal;
}

#kjjxspxzwt .gt_font_bold {
  font-weight: bold;
}

#kjjxspxzwt .gt_font_italic {
  font-style: italic;
}

#kjjxspxzwt .gt_super {
  font-size: 65%;
}

#kjjxspxzwt .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#kjjxspxzwt .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#kjjxspxzwt .gt_indent_1 {
  text-indent: 5px;
}

#kjjxspxzwt .gt_indent_2 {
  text-indent: 10px;
}

#kjjxspxzwt .gt_indent_3 {
  text-indent: 15px;
}

#kjjxspxzwt .gt_indent_4 {
  text-indent: 20px;
}

#kjjxspxzwt .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="user">user</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="first_build">first_build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_start">activity_start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_days">activity_days</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="build">build</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="activity_date">activity_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="days_from_start">days_from_start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="active_on_date">active_on_date</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="user" class="gt_row gt_left">user_1</td>
<td headers="first_build" class="gt_row gt_right">0.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-01-31</td>
<td headers="activity_days" class="gt_row gt_right">9</td>
<td headers="build" class="gt_row gt_right">0.0.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-01-31</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_10</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-02</td>
<td headers="activity_days" class="gt_row gt_right">4</td>
<td headers="build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-02</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_11</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-02</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-02</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_12</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-03</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_12</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-04</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_12</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-05</td>
<td headers="days_from_start" class="gt_row gt_center">2</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_12</td>
<td headers="first_build" class="gt_row gt_right">0.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-07</td>
<td headers="days_from_start" class="gt_row gt_center">4</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_13</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-06</td>
<td headers="activity_days" class="gt_row gt_right">3</td>
<td headers="build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-06</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_14</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-08</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_14</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-12</td>
<td headers="days_from_start" class="gt_row gt_center">4</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_14</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-14</td>
<td headers="days_from_start" class="gt_row gt_center">6</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_14</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-17</td>
<td headers="days_from_start" class="gt_row gt_center">9</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_14</td>
<td headers="first_build" class="gt_row gt_right">0.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-18</td>
<td headers="days_from_start" class="gt_row gt_center">10</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_15</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-25</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-25</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_15</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-25</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-26</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_15</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-25</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-29</td>
<td headers="days_from_start" class="gt_row gt_center">4</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_15</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-25</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">0.3.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-31</td>
<td headers="days_from_start" class="gt_row gt_center">6</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_16</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-30</td>
<td headers="activity_days" class="gt_row gt_right">12</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-30</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_17</td>
<td headers="first_build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-05-09</td>
<td headers="activity_days" class="gt_row gt_right">8</td>
<td headers="build" class="gt_row gt_right">0.3.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-05-09</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_18</td>
<td headers="first_build" class="gt_row gt_right">0.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-06-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.3.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-06-03</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_18</td>
<td headers="first_build" class="gt_row gt_right">0.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-06-03</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">0.3.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-06-07</td>
<td headers="days_from_start" class="gt_row gt_center">4</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_19</td>
<td headers="first_build" class="gt_row gt_right">1.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-07-21</td>
<td headers="activity_days" class="gt_row gt_right">9</td>
<td headers="build" class="gt_row gt_right">1.1.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-07-21</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_19</td>
<td headers="first_build" class="gt_row gt_right">1.1.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-07-21</td>
<td headers="activity_days" class="gt_row gt_right">9</td>
<td headers="build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-07-23</td>
<td headers="days_from_start" class="gt_row gt_center">2</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_2</td>
<td headers="first_build" class="gt_row gt_right">0.0.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-02-02</td>
<td headers="activity_days" class="gt_row gt_right">1</td>
<td headers="build" class="gt_row gt_right">0.0.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-02-02</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_20</td>
<td headers="first_build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-08-14</td>
<td headers="activity_days" class="gt_row gt_right">14</td>
<td headers="build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-08-14</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_20</td>
<td headers="first_build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-08-14</td>
<td headers="activity_days" class="gt_row gt_right">14</td>
<td headers="build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-08-16</td>
<td headers="days_from_start" class="gt_row gt_center">2</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_20</td>
<td headers="first_build" class="gt_row gt_right">1.1.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-08-14</td>
<td headers="activity_days" class="gt_row gt_right">14</td>
<td headers="build" class="gt_row gt_right">1.1.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-08-26</td>
<td headers="days_from_start" class="gt_row gt_center">12</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_21</td>
<td headers="first_build" class="gt_row gt_right">1.1.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-08-23</td>
<td headers="activity_days" class="gt_row gt_right">9</td>
<td headers="build" class="gt_row gt_right">1.1.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-08-23</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_22</td>
<td headers="first_build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-06</td>
<td headers="activity_days" class="gt_row gt_right">13</td>
<td headers="build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-09-06</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_23</td>
<td headers="first_build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-23</td>
<td headers="activity_days" class="gt_row gt_right">8</td>
<td headers="build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-09-23</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_23</td>
<td headers="first_build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-23</td>
<td headers="activity_days" class="gt_row gt_right">8</td>
<td headers="build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-09-24</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_23</td>
<td headers="first_build" class="gt_row gt_right">1.2.0</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-23</td>
<td headers="activity_days" class="gt_row gt_right">8</td>
<td headers="build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-09-25</td>
<td headers="days_from_start" class="gt_row gt_center">2</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_24</td>
<td headers="first_build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-28</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-09-28</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_24</td>
<td headers="first_build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-09-28</td>
<td headers="activity_days" class="gt_row gt_right">6</td>
<td headers="build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-09-29</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_25</td>
<td headers="first_build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-10-07</td>
<td headers="activity_days" class="gt_row gt_right">4</td>
<td headers="build" class="gt_row gt_right">1.2.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-10-07</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_26</td>
<td headers="first_build" class="gt_row gt_right">1.3.1</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-01</td>
<td headers="activity_days" class="gt_row gt_right">1</td>
<td headers="build" class="gt_row gt_right">1.3.1</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-01</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_27</td>
<td headers="first_build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-15</td>
<td headers="activity_days" class="gt_row gt_right">7</td>
<td headers="build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-15</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_27</td>
<td headers="first_build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-15</td>
<td headers="activity_days" class="gt_row gt_right">7</td>
<td headers="build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-16</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_27</td>
<td headers="first_build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-15</td>
<td headers="activity_days" class="gt_row gt_right">7</td>
<td headers="build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-20</td>
<td headers="days_from_start" class="gt_row gt_center">5</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_28</td>
<td headers="first_build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-12</td>
<td headers="activity_days" class="gt_row gt_right">5</td>
<td headers="build" class="gt_row gt_right">1.3.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-12</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_29</td>
<td headers="first_build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-28</td>
<td headers="activity_days" class="gt_row gt_right">7</td>
<td headers="build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-28</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_29</td>
<td headers="first_build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-28</td>
<td headers="activity_days" class="gt_row gt_right">7</td>
<td headers="build" class="gt_row gt_right">1.4.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-12-03</td>
<td headers="days_from_start" class="gt_row gt_center">5</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_3</td>
<td headers="first_build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-02-07</td>
<td headers="activity_days" class="gt_row gt_right">2</td>
<td headers="build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-02-07</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_3</td>
<td headers="first_build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_start" class="gt_row gt_right">2023-02-07</td>
<td headers="activity_days" class="gt_row gt_right">2</td>
<td headers="build" class="gt_row gt_right">0.0.2</td>
<td headers="activity_date" class="gt_row gt_right">2023-02-08</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_30</td>
<td headers="first_build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-29</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_date" class="gt_row gt_right">2023-11-29</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_30</td>
<td headers="first_build" class="gt_row gt_right">1.3.3</td>
<td headers="activity_start" class="gt_row gt_right">2023-11-29</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">1.4.0</td>
<td headers="activity_date" class="gt_row gt_right">2023-12-02</td>
<td headers="days_from_start" class="gt_row gt_center">3</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_31</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_date" class="gt_row gt_right">2024-01-08</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_31</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-08</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_date" class="gt_row gt_right">2024-01-09</td>
<td headers="days_from_start" class="gt_row gt_center">1</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_32</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-30</td>
<td headers="activity_days" class="gt_row gt_right">5</td>
<td headers="build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_date" class="gt_row gt_right">2024-01-30</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
    <tr><td headers="user" class="gt_row gt_left">user_33</td>
<td headers="first_build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_start" class="gt_row gt_right">2024-01-17</td>
<td headers="activity_days" class="gt_row gt_right">10</td>
<td headers="build" class="gt_row gt_right">1.5.0</td>
<td headers="activity_date" class="gt_row gt_right">2024-01-17</td>
<td headers="days_from_start" class="gt_row gt_center">0</td>
<td headers="active_on_date" class="gt_row gt_center">TRUE</td></tr>
  </tbody>
  
  
</table>
</div>
