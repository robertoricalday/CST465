using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProfileData
/// </summary>
public class ProfileData
{
    //Variables
    string _Name;
    string _EmailAddress;
    string _UserType;
    string _Hobby;
    string _Band;
    string _Biography;
    string _CoursePrefix;
    string _CourseNumber;
    string _CourseDescription;


    public ProfileData()
    {
        //
        // TODO: Add constructor logic here
        //

    }

    public string Name
    {
        get { return _Name; }
        set { _Name = value; }
    }

    public string EmailAddress
    {
        get { return _EmailAddress; }
        set { _EmailAddress = value; }
    }

    public string UserType
    {
        get { return _UserType; }
        set { _UserType = value; }
    }

    public string Hobby
    {
        get { return _Hobby; }
        set { _Hobby = value; }
    }

    public string Band
    {
        get { return _Band; }
        set { _Band = value; }
    }

    public string Biography
    {
        get { return _Biography; }
        set { _Biography = value; }
    }

    public string CoursePrefix
    {
        get { return _CoursePrefix; }
        set { _CoursePrefix = value; }
    }

    public string CourseNumber
    {
        get { return _CourseNumber; }
        set { _CourseNumber = value; }
    }

    public string CourseDescription
    {
        get { return _CourseDescription; }
        set { _CourseDescription = value; }
    }
}