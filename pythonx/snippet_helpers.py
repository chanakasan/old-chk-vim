def get_class_name(re, basename):
    lower_camel_case = re.sub('_.', lambda x: x.group()[1].upper(), basename)
    return lower_camel_case[0].upper()+lower_camel_case[1:]
