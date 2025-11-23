import React from 'react';

const QuoteForm = () => {
    return (
        <div className="bg-white p-6 rounded-xl shadow-xl border-t-4 border-orange">
            <h3 className="text-2xl font-bold text-navy mb-6">Request a quote</h3>
            <form className="space-y-4">
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
                    <input type="text" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" placeholder="Your Name" />
                </div>
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Email address</label>
                    <input type="email" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" placeholder="email@example.com" />
                </div>
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Tel/WhatsApp (Optional)</label>
                    <input type="tel" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" placeholder="+44..." />
                </div>
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Required service</label>
                    <select className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition bg-white">
                        <option>Air freight</option>
                        <option>Sea freight</option>
                        <option>Road freight</option>
                    </select>
                </div>
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Collection address</label>
                    <textarea className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" rows={2} placeholder="City, Postcode..."></textarea>
                </div>
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Destination Address or Airport</label>
                    <input type="text" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" placeholder="Destination" />
                </div>
                <div className="grid grid-cols-2 gap-4">
                    <div>
                        <label className="block text-sm font-medium text-gray-700 mb-1">No of Packages</label>
                        <input type="number" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" placeholder="1" />
                    </div>
                    <div>
                        <label className="block text-sm font-medium text-gray-700 mb-1">Total weight (kg)</label>
                        <input type="number" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" placeholder="kg" />
                    </div>
                </div>
                <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Weight & Dimensions (Optional)</label>
                    <textarea className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange focus:border-transparent outline-none transition" rows={2} placeholder="Details..."></textarea>
                </div>
                <button type="submit" className="w-full bg-orange text-white font-bold py-3 rounded-lg hover:bg-orange/90 transition shadow-lg shadow-orange/20 mt-2">
                    Get Quote
                </button>
            </form>
        </div>
    );
};

export default QuoteForm;
