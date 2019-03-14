using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Pulsate.Sdk.React.RNPulsateSdkReact
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPulsateSdkReactModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPulsateSdkReactModule"/>.
        /// </summary>
        internal RNPulsateSdkReactModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPulsateSdkReact";
            }
        }
    }
}
