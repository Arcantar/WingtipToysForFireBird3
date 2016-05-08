<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <ProjectGuid>{97d121b5-f35c-44a6-b501-0a622553031a}</ProjectGuid>
    <ProjectTypeGuids>{349c5851-65df-11da-9384-00065b846f21};{656346D9-4656-40DA-A068-22D5425D4639}</ProjectTypeGuids>
    <OutputType>Library</OutputType>
    <RootNamespace>WingtipToysForFireBird3</RootNamespace>
    <AssemblyName>WingtipToysForFireBird3</AssemblyName>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.6</TargetFrameworkVersion>
    <IISExpressUseClassicPipelineMode>true</IISExpressUseClassicPipelineMode>
    <Name>WingtipToysForFireBird3</Name>
    <UseIISExpress>false</UseIISExpress>
    <DefaultUses />
    <StartupClass />
    <InternalAssemblyName />
    <ApplicationIcon />
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <AllowLegacyWith>True</AllowLegacyWith>
    <AllowLegacyOutParams>
    </AllowLegacyOutParams>
    <AllowUnsafeCode>True</AllowUnsafeCode>
    <DelphiCompatibility>True</DelphiCompatibility>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <OutputPath>./bin\</OutputPath>
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>True</GenerateMDB>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <CpuType>anycpu</CpuType>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <OutputPath>./bin</OutputPath>
    <EnableAsserts>False</EnableAsserts>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="Antlr3.Runtime">
      <HintPath>..\packages\Antlr.3.4.1.9004\lib\Antlr3.Runtime.dll</HintPath>
    </Reference>
    <Reference Include="AspNet.ScriptManager.bootstrap">
      <HintPath>..\packages\AspNet.ScriptManager.bootstrap.3.0.0\lib\net45\AspNet.ScriptManager.bootstrap.dll</HintPath>
    </Reference>
    <Reference Include="AspNet.ScriptManager.jQuery">
      <HintPath>..\packages\AspNet.ScriptManager.jQuery.1.10.2\lib\net45\AspNet.ScriptManager.jQuery.dll</HintPath>
    </Reference>
    <Reference Include="Elmah">
      <HintPath>..\packages\elmah.corelibrary.1.2.2\lib\Elmah.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.AspNet.FriendlyUrls">
      <HintPath>..\packages\Microsoft.AspNet.FriendlyUrls.Core.1.0.2\lib\net45\Microsoft.AspNet.FriendlyUrls.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.AspNet.Identity.Core">
      <HintPath>..\packages\Microsoft.AspNet.Identity.Core.2.1.0\lib\net45\Microsoft.AspNet.Identity.Core.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.AspNet.Identity.Owin">
      <HintPath>..\packages\Microsoft.AspNet.Identity.Owin.2.1.0\lib\net45\Microsoft.AspNet.Identity.Owin.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.AspNet.Web.Optimization.WebForms">
      <HintPath>..\packages\Microsoft.AspNet.Web.Optimization.WebForms.1.1.3\lib\net45\Microsoft.AspNet.Web.Optimization.WebForms.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin">
      <HintPath>..\packages\Microsoft.Owin.2.1.0\lib\net45\Microsoft.Owin.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Host.SystemWeb">
      <HintPath>..\packages\Microsoft.Owin.Host.SystemWeb.2.1.0\lib\net45\Microsoft.Owin.Host.SystemWeb.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security">
      <HintPath>..\packages\Microsoft.Owin.Security.2.1.0\lib\net45\Microsoft.Owin.Security.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security.Cookies">
      <HintPath>..\packages\Microsoft.Owin.Security.Cookies.2.1.0\lib\net45\Microsoft.Owin.Security.Cookies.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security.Facebook">
      <HintPath>..\packages\Microsoft.Owin.Security.Facebook.2.1.0\lib\net45\Microsoft.Owin.Security.Facebook.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security.Google">
      <HintPath>..\packages\Microsoft.Owin.Security.Google.2.1.0\lib\net45\Microsoft.Owin.Security.Google.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security.MicrosoftAccount">
      <HintPath>..\packages\Microsoft.Owin.Security.MicrosoftAccount.2.1.0\lib\net45\Microsoft.Owin.Security.MicrosoftAccount.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security.OAuth">
      <HintPath>..\packages\Microsoft.Owin.Security.OAuth.2.1.0\lib\net45\Microsoft.Owin.Security.OAuth.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Owin.Security.Twitter">
      <HintPath>..\packages\Microsoft.Owin.Security.Twitter.2.1.0\lib\net45\Microsoft.Owin.Security.Twitter.dll</HintPath>
    </Reference>
    <Reference Include="mscorlib">
      <HintPath>$(Framework)\mscorlib.dll</HintPath>
    </Reference>
    <Reference Include="Newtonsoft.Json">
      <HintPath>..\packages\Newtonsoft.Json.6.0.3\lib\netcore45\Newtonsoft.Json.dll</HintPath>
    </Reference>
    <Reference Include="Owin">
      <HintPath>..\packages\Owin.1.0\lib\net40\Owin.dll</HintPath>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.ComponentModel.DataAnnotations" />
    <Reference Include="System.Configuration" />
    <Reference Include="System.Data" />
    <Reference Include="System.Data.Entity" />
    <Reference Include="System.Drawing" />
    <Reference Include="System.EnterpriseServices" />
    <Reference Include="System.Runtime.Caching" />
    <Reference Include="System.Web" />
    <Reference Include="System.Web.ApplicationServices" />
    <Reference Include="System.Web.DynamicData" />
    <Reference Include="System.Web.Entity" />
    <Reference Include="System.Web.Extensions" />
    <Reference Include="System.Web.Mobile" />
    <Reference Include="System.Web.Optimization">
      <HintPath>..\packages\Microsoft.AspNet.Web.Optimization.1.1.3\lib\net40\System.Web.Optimization.dll</HintPath>
    </Reference>
    <Reference Include="System.Web.Services" />
    <Reference Include="System.Windows.Forms" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Core">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml.Linq">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Data.DataSetExtensions">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="WebGrease">
      <HintPath>..\packages\WebGrease.1.5.2\lib\WebGrease.dll</HintPath>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Compile Include="About.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.About</DesignableClassName>
    </Compile>
    <Compile Include="About.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.About</DesignableClassName>
    </Compile>
    <Compile Include="AddToCart.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>AddToCart.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.AddToCart</DesignableClassName>
    </Compile>
    <Compile Include="AddToCart.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>AddToCart.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.AddToCart</DesignableClassName>
    </Compile>
    <Compile Include="Admin\AdminPage.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Admin\AdminPage.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Admin.AdminPage</DesignableClassName>
    </Compile>
    <Compile Include="Admin\AdminPage.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.Admin.AdminPage</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutCancel.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutCancel.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutCancel</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutCancel.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutCancel.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutCancel</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutComplete.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutComplete.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutComplete</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutComplete.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutComplete.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutComplete</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutError.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutError.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutError</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutError.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutError.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutError</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutReview.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutReview.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutReview</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutReview.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutReview.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutReview</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutStart.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutStart.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutStart</DesignableClassName>
    </Compile>
    <Compile Include="Checkout\CheckoutStart.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Checkout\CheckoutStart.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Checkout.CheckoutStart</DesignableClassName>
    </Compile>
    <Compile Include="Components\Controls\MenuCategory.pas">
      <SubType>Code</SubType>
      <DesignableClassName>WingtipToysForFireBird3.Components.Controls.MenuCategory</DesignableClassName>
    </Compile>
    <Compile Include="Components\DefaultBasePage.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.Components.DefaultBasePage</DesignableClassName>
    </Compile>
    <Compile Include="Components\IPLocation.pas" />
    <Compile Include="Components\WebConfigSettings.pas" />
    <Compile Include="Contact.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Contact.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Contact</DesignableClassName>
    </Compile>
    <Compile Include="Contact.aspx.pas">
      <DependentUpon>Contact.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.Contact</DesignableClassName>
    </Compile>
    <Compile Include="ErrorPage.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ErrorPage.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ErrorPage</DesignableClassName>
    </Compile>
    <Compile Include="ErrorPage.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ErrorPage.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ErrorPage</DesignableClassName>
    </Compile>
    <Compile Include="Helper\CacheHelper.pas" />
    <Compile Include="Helper\Cache\CacheManage.pas" />
    <Compile Include="Helper\Cache\CacheProvider.pas" />
    <Compile Include="Helper\Cache\MemoryCacheAdapter.pas" />
    <Compile Include="Helper\ConfigHelper.pas" />
    <Compile Include="Helper\CultureHelper.pas" />
    <Compile Include="Helper\CultureHelperHttpModule.pas" />
    <Compile Include="Helper\PersianDateHelper.pas" />
    <Compile Include="Helper\StringHelper.pas" />
    <Compile Include="Helper\WebUtilsHelper.pas" />
    <Compile Include="ProductDetails.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ProductDetails.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ProductDetails</DesignableClassName>
    </Compile>
    <Compile Include="ProductDetails.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ProductDetails.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ProductDetails</DesignableClassName>
    </Compile>
    <Compile Include="ProductList.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ProductList.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ProductList</DesignableClassName>
    </Compile>
    <Compile Include="ProductList.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ProductList.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ProductList</DesignableClassName>
    </Compile>
    <Compile Include="ShoppingCart.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ShoppingCart.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ShoppingCart</DesignableClassName>
    </Compile>
    <Compile Include="ShoppingCart.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>ShoppingCart.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.ShoppingCart</DesignableClassName>
    </Compile>
    <Compile Include="Site.Master.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Site.Master</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Site</DesignableClassName>
    </Compile>
    <Compile Include="Site.Master.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Site.Master</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Site</DesignableClassName>
    </Compile>
    <Compile Include="Site.Mobile.Master.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Site.Mobile.Master</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Site_Mobile</DesignableClassName>
    </Compile>
    <Compile Include="Site.Mobile.Master.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Site.Mobile.Master</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Site_Mobile</DesignableClassName>
    </Compile>
    <Compile Include="Startup.pas" />
    <Compile Include="ViewSwitcher.ascx.Designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.ViewSwitcher</DesignableClassName>
    </Compile>
    <Compile Include="ViewSwitcher.ascx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.ViewSwitcher</DesignableClassName>
    </Compile>
    <Content Include="About.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\AddPhoneNumber.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Confirm.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Forgot.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Lockout.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Login.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Manage.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\ManageLogins.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\ManagePassword.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\OpenAuthProviders.ascx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Register.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\RegisterExternalLogin.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\ResetPassword.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\ResetPasswordConfirmation.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\TwoFactorAuthenticationSignIn.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\VerifyPhoneNumber.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Account\Web.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="AddToCart.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Admin\AdminPage.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Admin\Web.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Bundle.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\boatbig.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\boatpaper.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\boatsail.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\busdouble.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\busgreen.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\busred.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\carconvert.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\carearly.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\carfast.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\carfaster.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\carracer.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\planeace.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\planeglider.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\planepaper.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\planeprop.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\rocket.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\boatbig.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\boatpaper.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\boatsail.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\busdouble.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\busgreen.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\busred.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\carconvert.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\carearly.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\carfast.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\carfaster.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\carracer.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\planeace.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\planeglider.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\planepaper.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\planeprop.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\rocket.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\truckbig.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\truckearly.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\Thumbs\truckfire.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\truckbig.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\truckearly.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Catalog\Images\truckfire.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Checkout\CheckoutCancel.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Checkout\CheckoutComplete.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Checkout\CheckoutError.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Checkout\CheckoutReview.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Checkout\CheckoutStart.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Checkout\Web.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Contact.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\bootstrap-original.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\bootstrap-original.min.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\bootstrap.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\bootstrap.min.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\Site.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Default.aspx" />
    <Compile Include="Account\AddPhoneNumber.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\AddPhoneNumber.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.AddPhoneNumber</DesignableClassName>
    </Compile>
    <Compile Include="Account\AddPhoneNumber.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\AddPhoneNumber.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.AddPhoneNumber</DesignableClassName>
    </Compile>
    <Compile Include="Account\Confirm.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Confirm.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Confirm</DesignableClassName>
    </Compile>
    <Compile Include="Account\Confirm.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Confirm.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Confirm</DesignableClassName>
    </Compile>
    <Compile Include="Account\Forgot.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Forgot.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ForgotPassword</DesignableClassName>
    </Compile>
    <Compile Include="Account\Forgot.aspx.pas">
      <DependentUpon>Account\Forgot.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.Account.ForgotPassword</DesignableClassName>
    </Compile>
    <Compile Include="Account\Lockout.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Lockout.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Lockout</DesignableClassName>
    </Compile>
    <Compile Include="Account\Lockout.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Lockout.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Lockout</DesignableClassName>
    </Compile>
    <Compile Include="Account\Login.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Login.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Login</DesignableClassName>
    </Compile>
    <Compile Include="Account\Login.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Login.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Login</DesignableClassName>
    </Compile>
    <Compile Include="Account\Manage.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Manage.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Manage</DesignableClassName>
    </Compile>
    <Compile Include="Account\Manage.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Manage.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Manage</DesignableClassName>
    </Compile>
    <Compile Include="Account\ManageLogins.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\ManageLogins.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ManageLogins</DesignableClassName>
    </Compile>
    <Compile Include="Account\ManageLogins.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\ManageLogins.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ManageLogins</DesignableClassName>
    </Compile>
    <Compile Include="Account\ManagePassword.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\ManagePassword.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ManagePassword</DesignableClassName>
    </Compile>
    <Compile Include="Account\ManagePassword.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\ManagePassword.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ManagePassword</DesignableClassName>
    </Compile>
    <Compile Include="Account\OpenAuthProviders.ascx.Designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\OpenAuthProviders.ascx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.OpenAuthProviders</DesignableClassName>
    </Compile>
    <Compile Include="Account\OpenAuthProviders.ascx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\OpenAuthProviders.ascx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.OpenAuthProviders</DesignableClassName>
    </Compile>
    <Compile Include="Account\Register.aspx.designer.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Register.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Register</DesignableClassName>
    </Compile>
    <Compile Include="Account\Register.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\Register.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.Register</DesignableClassName>
    </Compile>
    <Compile Include="Account\RegisterExternalLogin.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\RegisterExternalLogin.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.RegisterExternalLogin</DesignableClassName>
    </Compile>
    <Compile Include="Account\ResetPassword.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\ResetPassword.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ResetPassword</DesignableClassName>
    </Compile>
    <Compile Include="Account\ResetPasswordConfirmation.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\ResetPasswordConfirmation.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.ResetPasswordConfirmation</DesignableClassName>
    </Compile>
    <Compile Include="Account\TwoFactorAuthenticationSignIn.aspx.pas">
      <SubType>ASPXCodeBehind</SubType>
      <DependentUpon>Account\TwoFactorAuthenticationSignIn.aspx</DependentUpon>
      <DesignableClassName>WingtipToysForFireBird3.Account.TwoFactorAuthenticationSignIn</DesignableClassName>
    </Compile>
    <Compile Include="Account\VerifyPhoneNumber.aspx.pas">
      <DependentUpon>Account\VerifyPhoneNumber.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3.Account.VerifyPhoneNumber</DesignableClassName>
    </Compile>
    <Compile Include="App_Start\BundleConfig.pas" />
    <Compile Include="App_Start\IdentityConfig.pas" />
    <Compile Include="App_Start\RouteConfig.pas" />
    <Compile Include="App_Start\Startup.Auth.pas" />
    <Compile Include="Default.aspx.pas">
      <DependentUpon>Default.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3._Default</DesignableClassName>
    </Compile>
    <Compile Include="Default.aspx.designer.pas">
      <DependentUpon>Default.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>WingtipToysForFireBird3._Default</DesignableClassName>
    </Compile>
    <Content Include="ErrorPage.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="favicon.ico">
      <SubType>Content</SubType>
    </Content>
    <Content Include="fonts\glyphicons-halflings-regular.eot">
      <SubType>Content</SubType>
    </Content>
    <Content Include="fonts\glyphicons-halflings-regular.svg">
      <SubType>Content</SubType>
    </Content>
    <Content Include="fonts\glyphicons-halflings-regular.ttf">
      <SubType>Content</SubType>
    </Content>
    <Content Include="fonts\glyphicons-halflings-regular.woff">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Global.asax" />
    <Compile Include="Global.asax.pas">
      <DependentUpon>Global.asax</DependentUpon>
    </Compile>
    <Content Include="Images\logo.jpg">
      <SubType>Content</SubType>
    </Content>
    <Content Include="ProductDetails.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="ProductList.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\bootstrap.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\bootstrap.min.js">
      <SubType>Content</SubType>
    </Content>
    <None Include="WingtiToysForFirebird3.pubxml">
      <SubType>Content</SubType>
    </None>
    <None Include="Scripts\jquery-1.10.2.intellisense.js">
      <SubType>Content</SubType>
    </None>
    <Content Include="Scripts\jquery-1.10.2.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\jquery-1.10.2.min.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\jquery-1.10.2.min.map">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\modernizr-2.6.2.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\respond.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\respond.min.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\DetailsView.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\Focus.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\GridView.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\Menu.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MenuStandards.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjax.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxApplicationServices.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxComponentModel.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxCore.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxGlobalization.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxHistory.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxNetwork.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxSerialization.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxTimer.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxWebForms.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\MSAjax\MicrosoftAjaxWebServices.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\SmartNav.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\TreeView.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\WebForms.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\WebParts.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\WebForms\WebUIValidation.js">
      <SubType>Content</SubType>
    </Content>
    <None Include="Scripts\_references.js">
      <SubType>Content</SubType>
    </None>
    <Content Include="ShoppingCart.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Site.Master">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Site.Mobile.Master">
      <SubType>Content</SubType>
    </Content>
    <Content Include="ViewSwitcher.ascx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Web.config" />
    <Compile Include="Logic\AddProducts.pas" />
    <Compile Include="Logic\ExceptionUtility.pas" />
    <Compile Include="Logic\PayPalFunctions.pas" />
    <Compile Include="Logic\RoleActions.pas" />
    <Compile Include="Logic\ShoppingCartActions.pas" />
    <Compile Include="Models\CartItem.pas" />
    <Compile Include="Models\Category.pas" />
    <Compile Include="Models\IdentityModels.pas" />
    <Compile Include="Models\Order.pas" />
    <Compile Include="Models\OrderDetail.pas" />
    <Compile Include="Models\Product.pas" />
    <Compile Include="Models\ProductContext.pas" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <None Include="Web.Release.config">
      <SubType>Content</SubType>
      <DependentUpon>Web.config</DependentUpon>
    </None>
    <None Include="Web.Debug.config">
      <SubType>Content</SubType>
      <DependentUpon>Web.config</DependentUpon>
    </None>
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Account" />
    <Folder Include="Admin" />
    <Folder Include="App_Data\" />
    <Folder Include="App_Readme" />
    <Folder Include="App_Start" />
    <Folder Include="Catalog" />
    <Folder Include="Catalog\Images" />
    <Folder Include="Catalog\Images\Thumbs" />
    <Folder Include="Checkout" />
    <Folder Include="Components\Controls" />
    <Folder Include="Content" />
    <Folder Include="fonts" />
    <Folder Include="Helper\Cache" />
    <Folder Include="Images" />
    <Folder Include="Logic" />
    <Folder Include="Models" />
    <Folder Include="Helper" />
    <Folder Include="Components" />
    <Folder Include="Scripts" />
    <Folder Include="Properties\" />
    <Folder Include="Scripts\WebForms" />
    <Folder Include="Scripts\WebForms\MSAjax" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\..\AspNet.Identity.Firebird3\AspNet.Identity.Firebird3\AspNet.Identity.Firebird3.oxygene">
      <Name>AspNet.Identity.Firebird3</Name>
      <Project>{b8d97c31-5470-43d6-87d8-1ffc9a7fc578}</Project>
      <Private>True</Private>
      <HintPath>..\..\AspNet.Identity.Firebird3\AspNet.Identity.Firebird3\bin\Debug\AspNet.Identity.Firebird3.dll</HintPath>
    </ProjectReference>
    <ProjectReference Include="..\WingtipToysForFireBird3.Data\WingtipToysForFireBird3.Data.oxygene">
      <Name>WingtipToysForFireBird3.Data</Name>
      <Project>{fd3b582c-a682-40af-99e1-447c9a2b9452}</Project>
      <Private>True</Private>
      <HintPath>..\WingtipToysForFireBird3.Data\bin\Release\WingtipToysForFireBird3.Data.dll</HintPath>
    </ProjectReference>
  </ItemGroup>
  <ProjectExtensions>
    <VisualStudio>
      <FlavorProperties Guid="{349c5851-65df-11da-9384-00065b846f21}">
        <WebProjectProperties>
          <UseIIS>False</UseIIS>
          <AutoAssignPort>True</AutoAssignPort>
          <DevelopmentServerPort>17523</DevelopmentServerPort>
          <DevelopmentServerVPath>/</DevelopmentServerVPath>
          <IISUrl>http://localhost/WingtipToysForFireBird3</IISUrl>
          <NTLMAuthentication>False</NTLMAuthentication>
          <UseCustomServer>True</UseCustomServer>
          <CustomServerUrl>http://dev-local2.tetrasys.eu</CustomServerUrl>
          <SaveServerSettingsInUserFile>False</SaveServerSettingsInUserFile>
        </WebProjectProperties>
      </FlavorProperties>
      <FlavorProperties Guid="{349c5851-65df-11da-9384-00065b846f21}" User="">
        <WebProjectProperties>
          <StartPageUrl>
          </StartPageUrl>
          <StartAction>CurrentPage</StartAction>
          <AspNetDebugging>True</AspNetDebugging>
          <SilverlightDebugging>False</SilverlightDebugging>
          <NativeDebugging>False</NativeDebugging>
          <SQLDebugging>False</SQLDebugging>
          <ExternalProgram>
          </ExternalProgram>
          <StartExternalURL>
          </StartExternalURL>
          <StartCmdLineArguments>
          </StartCmdLineArguments>
          <StartWorkingDirectory>
          </StartWorkingDirectory>
          <EnableENC>True</EnableENC>
          <AlwaysStartWebServerOnDebug>True</AlwaysStartWebServerOnDebug>
        </WebProjectProperties>
      </FlavorProperties>
    </VisualStudio>
  </ProjectExtensions>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Oxygene\RemObjects.Oxygene.Echoes.targets" />
  <Import Project="$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v12.0\WebApplications\Microsoft.WebApplication.targets" />
</Project>