install.packages('rsconnect')


rsconnect::setAccountInfo(name='0mn1s', token='0E8923087E282AA87B0C017BE1FE2B65', secret='dlz8mHwEsgxaHoR7GfmjdBJizOhC3MDLZ/CcHueS')

library(rsconnect)
rsconnect::deployApp('path/to/your/app')